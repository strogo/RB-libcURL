#tag Class
Protected Class MultiClient
Inherits libcURL.MultiHandle
	#tag Method, Flags = &h0
		Function AddItem(Item As libcURL.EasyHandle) As Boolean
		  If Super.AddItem(Item) Then
		    If Not mShare.AddItem(Item) Then
		      mLastError = Item.LastError
		      Call Me.RemoveItem(Item)
		      ErrorSetter(Item).LastError = mLastError
		      Return False
		    Else
		      Return True
		    End If
		  End If
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(GlobalInitFlags As Integer = libcURL.CURL_GLOBAL_DEFAULT)
		  // Calling the overridden superclass constructor.
		  // Constructor(GlobalInitFlags As Integer = libcURL.CURL_GLOBAL_DEFAULT) -- From MultiHandle
		  Super.Constructor(GlobalInitFlags)
		  
		  mShare = New ShareHandle(GlobalInitFlags)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected mShare As libcURL.ShareHandle
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mShare.ShareCookies
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value = ShareCookies Then Return
			  Dim rst As Boolean
			  If mShare.Count > 0 Then
			    rst = True
			    mShare.Close()
			  End If
			  mShare.ShareCookies = value
			  If rst Then
			    For Each hndle As EasyHandle In Instances.Values
			      If Not mShare.AddItem(hndle) Then Raise New cURLException(hndle)
			    Next
			  End If
			End Set
		#tag EndSetter
		ShareCookies As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mShare.ShareDNSCache
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value = ShareDNSCache Then Return
			  Dim rst As Boolean
			  If mShare.Count > 0 Then
			    rst = True
			    mShare.Close()
			  End If
			  mShare.ShareDNSCache = value
			  If rst Then
			    For Each hndle As EasyHandle In Instances.Values
			      If Not mShare.AddItem(hndle) Then Raise New cURLException(hndle)
			    Next
			  End If
			End Set
		#tag EndSetter
		ShareDNSCache As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mShare.ShareSSL
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value = ShareSSL Then Return
			  Dim rst As Boolean
			  If mShare.Count > 0 Then
			    rst = True
			    mShare.Close()
			  End If
			  mShare.ShareSSL = value
			  If rst Then
			    For Each hndle As EasyHandle In Instances.Values
			      If Not mShare.AddItem(hndle) Then Raise New cURLException(hndle)
			    Next
			  End If
			End Set
		#tag EndSetter
		ShareSSL As Boolean
	#tag EndComputedProperty


End Class
#tag EndClass
