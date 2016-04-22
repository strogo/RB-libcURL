#tag Class
Protected Class Connection
Inherits libcURL.EasyHandle
Implements Readable, Writeable
	#tag Event
		Function DataAvailable(NewData As MemoryBlock) As Integer
		  Break
		  Return NewData.Size
		End Function
	#tag EndEvent

	#tag Event
		Function DataNeeded(Buffer As MemoryBlock, MaxLength As Integer) As Integer
		  #pragma Unused Buffer
		  #pragma Unused MaxLength
		  Break
		  Return libcURL.CURL_READFUNC_ABORT
		End Function
	#tag EndEvent

	#tag Event
		Function SeekStream(Offset As Integer, Origin As Integer) As Boolean
		  #pragma Unused Offset
		  #pragma Unused Origin
		  Break
		  Return False
		End Function
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Constructor(GlobalInitFlags As Integer = libcURL.CURL_GLOBAL_DEFAULT)
		  // Calling the overridden superclass constructor.
		  // Constructor(GlobalInitFlags As Integer = libcURL.CURL_GLOBAL_DEFAULT) -- From EasyHandle
		  Super.Constructor(GlobalInitFlags)
		  If Not Me.SetOption(libcURL.Opts.CONNECT_ONLY, True) Then Raise New cURLException(Me)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(CopyOpts As libcURL.EasyHandle)
		  // Calling the overridden superclass constructor.
		  // Constructor(CopyOpts As libcURL.EasyHandle) -- From EasyHandle
		  Super.Constructor(CopyOpts)
		  If Not libcURL.Version.IsAtLeast(7, 15, 2) Then
		    mLastError = libcURL.Errors.FEATURE_UNAVAILABLE
		    Raise New libcURL.cURLException(Me)
		  End If
		  If Not Me.SetOption(libcURL.Opts.CONNECT_ONLY, True) Then Raise New cURLException(Me)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EOF() As Boolean
		  // Part of the Readable interface.
		  Return mEOF
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Flush()
		  // Part of the Writeable interface.
		  Break
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Perform(URL As String = "", Timeout As Integer = 0) As Boolean
		  mEOF = Not Super.Perform(URL, Timeout)
		  Return Not mEOF
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read(Count As Integer, encoding As TextEncoding = Nil) As String
		  // Part of the Readable interface.
		  Dim data As String = Super.Read(Count, encoding)
		  If data.LenB = 0 And Me.LastError <> libcURL.Errors.AGAIN Then 
		    mEOF = True
		  Else
		    mEOF = False
		  End If
		  Return data
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadError() As Boolean
		  // Part of the Readable interface.
		  Return Me.LastError <> 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  Super.Reset()
		  If Not Me.SetOption(libcURL.Opts.CONNECT_ONLY, True) Then Raise New cURLException(Me)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(text As String)
		  // Part of the Writeable interface.
		  Dim bs As New BinaryStream(text)
		  While Not bs.EOF
		    Dim sz As Integer = Min(bs.Length - bs.Position, 1024 * 16)
		    Dim c As Integer = Me.Write(bs.Read(sz))
		    If c <> sz Then
		      Dim err As New IOException
		      err.ErrorNumber = Me.LastError
		      err.Message = libcURL.FormatError(Me.LastError)
		      Raise err
		    End If
		    App.YieldToNextThread
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Write(Text As String) As Integer
		  Return Super.Write(Text)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WriteError() As Boolean
		  // Part of the Writeable interface.
		  Return Me.LastError <> 0
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mEOF As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AutoDisconnect"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoReferer"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConnectionTimeout"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FailOnServerError"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FollowRedirects"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HTTPCompression"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HTTPPreserveMethod"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HTTPVersion"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="LocalPort"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxRedirects"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Password"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemoteIP"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Secure"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOut"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UploadMode"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="URL"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseErrorBuffer"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseProgressEvent"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserAgent"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Username"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Verbose"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="libcURL.EasyHandle"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
