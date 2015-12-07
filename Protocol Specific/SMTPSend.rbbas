#tag Class
Protected Class SMTPSend
Inherits libcURL.EasyHandle
	#tag Event
		Function DataNeeded(Buffer As MemoryBlock, MaxLength As Integer) As Integer
		  If mMessageStream = Nil Then QueueMessage()
		  Dim data As MemoryBlock = mMessageStream.Read(MaxLength)
		  If data = Nil Or data.Size = 0 Then Return 0
		  Buffer.StringValue(0, data.Size) = data.StringValue(0, data.Size)
		  Return data.Size
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddAttachment(Attach As FolderItem)
		  mAttachments.Append(Attach)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddCCRecipient(BlindCC As Boolean, ParamArray Recipients() As String)
		  If Not BlindCC Then
		    For i As Integer = 0 To UBound(Recipients)
		      If mCCRecipients.IndexOf(Recipients(i)) > -1 Then Continue
		      mCCRecipients.Append(Recipients(i))
		      Call mRecipList.Append("<" + Recipients(i) + ">")
		    Next
		  Else
		    For i As Integer = 0 To UBound(Recipients)
		      If mBCCRecipients.IndexOf(Recipients(i)) > -1 Then Continue
		      mBCCRecipients.Append(Recipients(i))
		      Call mRecipList.Append("<" + Recipients(i) + ">")
		    Next
		  End If
		  
		  If Not Me.SetOption(libcURL.Opts.MAIL_RCPT, mRecipList) Then Raise New cURLException(Me)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRecipient(ParamArray Recipients() As String)
		  For i As Integer = 0 To UBound(Recipients)
		    mRecipients.Append(Recipients(i))
		    Call mRecipList.Append("<" + Recipients(i) + ">")
		  Next
		  
		  If Not Me.SetOption(libcURL.Opts.MAIL_RCPT, mRecipList) Then Raise New cURLException(Me)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(GlobalInitFlags As Integer = libcURL.CURL_GLOBAL_DEFAULT)
		  // Calling the overridden superclass constructor.
		  // Constructor(GlobalInitFlags As Integer = libcURL.CURL_GLOBAL_DEFAULT) -- From EasyHandle
		  Super.Constructor(GlobalInitFlags)
		  mRecipList = New libcURL.ListPtr
		  Me.UploadMode = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(CopyOpts As libcURL.EasyHandle)
		  // Calling the overridden superclass constructor.
		  // Constructor(CopyOpts As libcURL.EasyHandle) -- From EasyHandle
		  Super.Constructor(CopyOpts)
		  mRecipList = New libcURL.ListPtr
		  Me.UploadMode = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub QueueMessage()
		  Dim cc, bcc, recip As String
		  If True Then ' for folding only
		    For i As Integer = 0 To UBound(mRecipients)
		      Dim address As String = "<" + mRecipients(i) + ">"
		      recip = recip + address
		      If i < UBound(mRecipients) Then recip = recip + ", "
		    Next
		    
		    If mCCRecipients <> Nil Then
		      For i As Integer = 0 To UBound(mCCRecipients)
		        Dim address As String = "<" + mCCRecipients(i) + ">"
		        cc = cc + address
		        If i < UBound(mCCRecipients) Then cc = cc + ", "
		      Next
		    End If
		    
		    If mBCCRecipients <> Nil Then
		      For i As Integer = 0 To UBound(mBCCRecipients)
		        Dim address As String = "<" + mBCCRecipients(i) + ">"
		        bcc = bcc + address
		        If i < UBound(mBCCRecipients) Then bcc = bcc + ", "
		      Next
		    End If
		  End If
		  
		  Dim message As New MemoryBlock(0)
		  mMessageStream = New BinaryStream(message)
		  mMessageStream.Write("Subject: " + mSubject + EndOfLine.Windows)
		  mMessageStream.Write("From: " + mSenderAddress + EndOfLine.Windows)
		  mMessageStream.Write("Date: " + libcURL.ParseDate(New Date) + EndOfLine.Windows)
		  
		  If cc <> "" Then mMessageStream.Write("CC: " + cc + EndOfLine.Windows)
		  If bcc <> "" Then mMessageStream.Write("BCC: " + bcc + EndOfLine.Windows)
		  If recip <> "" Then mMessageStream.Write("To: " + recip + EndOfLine.Windows)
		  
		  mMessageStream.Write(EndOfLine.Windows)
		  
		  If UBound(mAttachments) > -1 Then
		    Dim m As New libcURL.MultipartForm
		    If Not m.AddElement("main", mMessageBody) Then Raise New libcURL.cURLException(m)
		    For i As Integer = 0 To UBound(mAttachments)
		      If Not m.AddElement(mAttachments(i).Name, mAttachments(i)) Then Raise New libcURL.cURLException(m)
		    Next
		    If Not m.Serialize(mMessageStream) Then Raise New libcURL.cURLException(m)
		  Else
		    mMessageStream.Write(mMessageBody + EndOfLine.Windows)
		  End If
		  mMessageStream.Close
		  mMessageStream = New BinaryStream(message)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAttachment(Attach As FolderItem)
		  For i As Integer = UBound(mAttachments) DownTo 0
		    If mAttachments(i).AbsolutePath = Attach.AbsolutePath Then
		      mAttachments.Remove(i)
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveRecipient(Recipient As String)
		  If mRecipients.IndexOf(Recipient) > -1 Then mRecipients.Remove(mRecipients.IndexOf(Recipient))
		  If mCCRecipients.IndexOf(Recipient) > -1 Then mCCRecipients.Remove(mCCRecipients.IndexOf(Recipient))
		  If mBCCRecipients.IndexOf(Recipient) > -1 Then mBCCRecipients.Remove(mBCCRecipients.IndexOf(Recipient))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  Super.Reset()
		  ReDim mAttachments(-1)
		  ReDim mRecipients(-1)
		  ReDim mBCCRecipients(-1)
		  ReDim mCCRecipients(-1)
		  mMessageBody = ""
		  mMessageStream = Nil
		  mRecipList = New libcURL.ListPtr
		  mSenderAddress = ""
		  mSubject = ""
		  Me.UploadMode = True
		  Me.UploadStream = Nil
		  Me.DownloadStream = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMessage(Subject As String, MessageBody As String)
		  mSubject = Subject
		  mMessageBody = MessageBody
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMessage(Subject As String, MessageBody As StyledText)
		  Me.SetMessage(Subject, MessageBody.RTFData)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected mAttachments() As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mBCCRecipients() As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mCCRecipients() As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mMessageBody As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mMessageStream As BinaryStream
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mRecipients() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRecipList As libcURL.ListPtr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSenderAddress As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mSubject As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mSenderAddress
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Not Me.SetOption(libcURL.Opts.MAIL_FROM, "<" + value + ">") Then Raise New cURLException(Me)
			  mSenderAddress = value
			End Set
		#tag EndSetter
		SenderAddress As String
	#tag EndComputedProperty


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
End Class
#tag EndClass
