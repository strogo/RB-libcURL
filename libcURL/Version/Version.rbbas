#tag Module
Protected Module Version
	#tag Method, Flags = &h21
		Private Function Features() As Integer
		  Return Struct.Features
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsAtLeast(Major As Integer, Minor As Integer, Patch As Integer) As Boolean
		  ' Returns True if libcURL is available and at least the version specified.
		  
		  Select Case True
		  Case Not System.IsFunctionAvailable("curl_global_init", "libcurl")
		    Return False
		    
		  Case MajorNumber > Major
		    Return True
		    
		  Case MajorNumber = Major
		    If MinorNumber > Minor Or (MinorNumber = Minor And PatchNumber >= Patch) Then Return True
		    
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MajorNumber() As Integer
		  ' libcurl's major version; e.g. if the version is 1.2.3 then the MajorNumber is 1
		  
		  Static Major As Integer
		  If Major = 0 Then Major = Val(NthField(NthField(NthField(libcURL.Version.Name, " ", 1), "/", 2), ".", 1))
		  Return Major
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MinorNumber() As Integer
		  ' libcurl's minor version; e.g. if the version is 1.2.3 then the MinorNumber is 2
		  
		  Static Minor As Integer
		  If Minor = 0 Then Minor = Val(NthField(NthField(NthField(libcURL.Version.Name, " ", 1), "/", 2), ".", 2))
		  Return Minor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Name() As String
		  If Not System.IsFunctionAvailable("curl_version", "libcurl") Then Return ""
		  Static p As MemoryBlock
		  If p = Nil Then
		    p = curl_version()
		  End If
		  Return p.CString(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PatchNumber() As Integer
		  ' libcurl's patch version; e.g. if the version is 1.2.3 then the PatchNumber is 3
		  Static Patch As Integer
		  If Patch = 0 Then Patch = Val(NthField(NthField(NthField(libcURL.Version.Name, " ", 1), "/", 2), ".", 3))
		  Return Patch
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Platform() As String
		  Dim data As MemoryBlock = Struct.HostString
		  If data <> Nil Then Return data.CString(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Protocols() As String()
		  Dim prots() As String
		  If Not System.IsFunctionAvailable("curl_version", "libcurl") Then Return prots
		  Dim ve As CURLVersion = libcURL.Version.Struct
		  Dim p1 As Ptr = ve.Protocols.Ptr(0)
		  Dim mb As MemoryBlock = p1
		  Dim s As String
		  Dim i As Integer
		  Do
		    s = mb.CString(i)
		    Dim isPrintable As Boolean = (AscB(LeftB(s, 1)) > 65 And AscB(LeftB(s, 1)) < 91) Or (AscB(LeftB(s, 1)) > 96 And AscB(LeftB(s, 1)) < 123)
		    If isPrintable Then ' not empty, first char is a letter
		      prots.Append(s)
		      i = i + s.LenB + 1
		    Else
		      Exit Do
		    End If
		  Loop Until UBound(prots) > 50 ' If we get this far then we're probably reading random garbage, so bail out
		  Return prots
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SSHProviderName() As String
		  Dim data As MemoryBlock = Struct.libSSHVersion
		  If data <> Nil Then Return data.CString(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SSLProviderName() As String
		  Dim data As MemoryBlock = Struct.SSLVersionString
		  If data <> Nil Then Return data.CString(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Struct() As CURLVersion
		  Static mStruct As CURLVersion
		  Static init As Boolean
		  If Not init And System.IsFunctionAvailable("curl_version_info", "libcurl") Then
		    Dim error As Integer = curl_global_init(CURL_GLOBAL_DEFAULT) ' do not try to replace with cURLHandle, which performs version checks
		    If error = 0 Then
		      init = True
		      Dim ve As Ptr = curl_version_info(CURLVERSION_FOURTH)
		      Try
		        mStruct = ve.CURLVersion
		      Catch err
		        If err.Message = "" Then err.Message = "Unable to read libcURL version information."
		        Raise err
		      Finally
		        curl_global_cleanup()
		      End Try
		    Else
		      Dim err As New cURLException(Nil)
		      err.ErrorNumber = error
		      err.Message = libcURL.FormatError(error)
		      Raise err
		    End If
		  End If
		  If init Then Return mStruct
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_ASYNCHDNS) = FEATURE_ASYNCHDNS  // asynchronous dns resolves
			End Get
		#tag EndGetter
		Protected ASYNCHDNS As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_CONV) = FEATURE_CONV // character conversions are supported
			End Get
		#tag EndGetter
		Protected CONV As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_CURLDEBUG) = FEATURE_CURLDEBUG // built with memory tracking debug capabilities
			End Get
		#tag EndGetter
		Protected CURLDEBUG As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_DEBUG) = FEATURE_DEBUG // built with debug capabilities
			End Get
		#tag EndGetter
		Protected DEBUG As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_GSSNEGOTIATE) = FEATURE_GSSNEGOTIATE // Negotiate auth support
			End Get
		#tag EndGetter
		Protected GSSNEGOTIATE As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_HTTP2) = FEATURE_HTTP2 // HTTP2.0 support
			End Get
		#tag EndGetter
		Protected HTTP2 As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_IDN) = FEATURE_IDN // International Domain Names support
			End Get
		#tag EndGetter
		Protected IDN As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_IPV6) = FEATURE_IPV6 // IPv6-enabled
			End Get
		#tag EndGetter
		Protected IPV6 As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_KERBEROS4) = FEATURE_KERBEROS4 // kerberos 4 auth is supported
			End Get
		#tag EndGetter
		Protected KERBEROS4 As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_KERBEROS5) = FEATURE_KERBEROS5 // kerberos 5 auth is supported
			End Get
		#tag EndGetter
		Protected KERBEROS5 As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_LARGEFILE) = FEATURE_LARGEFILE // supports files bigger than 2GB
			End Get
		#tag EndGetter
		Protected LARGEFILE As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_NTLM) = FEATURE_NTLM // NTLM auth is supported
			End Get
		#tag EndGetter
		Protected NTLM As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_SPNEGO) = FEATURE_SPNEGO // SPNEGO auth
			End Get
		#tag EndGetter
		Protected SPNEGO As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_SSL) = FEATURE_SSL // SSL options are present
			End Get
		#tag EndGetter
		Protected SSL As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Dim kSSPI As Integer = ShiftLeft(1, 11)
			  Return BitAnd(Features, kSSPI) = kSSPI // SSPI is supported
			End Get
		#tag EndGetter
		Protected SSPI As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return BitAnd(Features, FEATURE_TLSAUTH_SRP) = FEATURE_TLSAUTH_SRP // TLS-SRP support
			End Get
		#tag EndGetter
		Protected TLS_SRP As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = CURLVERSION_FOURTH, Type = Double, Dynamic = False, Default = \"3", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_ASYNCHDNS, Type = Double, Dynamic = False, Default = \"128", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_CONV, Type = Double, Dynamic = False, Default = \"4096", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_CURLDEBUG, Type = Double, Dynamic = False, Default = \"8192", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_DEBUG, Type = Double, Dynamic = False, Default = \"64", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_GSSNEGOTIATE, Type = Double, Dynamic = False, Default = \"32", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_HTTP2, Type = Double, Dynamic = False, Default = \"65536", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_IDN, Type = Double, Dynamic = False, Default = \"1024", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_IPV6, Type = Double, Dynamic = False, Default = \"1", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_KERBEROS4, Type = Double, Dynamic = False, Default = \"2", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_KERBEROS5, Type = Double, Dynamic = False, Default = \"262144", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_LARGEFILE, Type = Double, Dynamic = False, Default = \"512", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_NTLM, Type = Double, Dynamic = False, Default = \"16", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_SPNEGO, Type = Double, Dynamic = False, Default = \"256", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_SSL, Type = Double, Dynamic = False, Default = \"4", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FEATURE_TLSAUTH_SRP, Type = Double, Dynamic = False, Default = \"16384", Scope = Private
	#tag EndConstant


	#tag Structure, Name = CURLVersion, Flags = &h21
		Age As Integer
		  VersionString As Ptr
		  VersionNumber As UInt32
		  HostString As Ptr
		  Features As Integer
		  SSLVersionString As Ptr
		  SSLVersionNumber As Integer
		  libzVersion As Ptr
		  Protocols As Ptr
		  ares As Ptr
		  aresnum As Integer
		  libidn As Ptr
		  iconvVersion as Integer
		libSSHVersion As Ptr
	#tag EndStructure


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
