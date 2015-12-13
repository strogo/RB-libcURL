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
		Sub AddBCCRecipient(ParamArray Recipients() As String)
		  For i As Integer = 0 To UBound(Recipients)
		    If mBCCRecipients.IndexOf(Recipients(i)) > -1 Then Continue
		    mBCCRecipients.Append(Recipients(i))
		    Call mRecipList.Append("<" + Recipients(i) + ">")
		  Next
		  
		  If Not Me.SetOption(libcURL.Opts.MAIL_RCPT, mRecipList) Then Raise New cURLException(Me)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddCCRecipient(ParamArray Recipients() As String)
		  For i As Integer = 0 To UBound(Recipients)
		    If mCCRecipients.IndexOf(Recipients(i)) > -1 Then Continue
		    mCCRecipients.Append(Recipients(i))
		    Call mRecipList.Append("<" + Recipients(i) + ">")
		  Next
		  
		  If Not Me.SetOption(libcURL.Opts.MAIL_RCPT, mRecipList) Then Raise New cURLException(Me)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRecipient(ParamArray Recipients() As String)
		  For i As Integer = 0 To UBound(Recipients)
		    If mRecipients.IndexOf(Recipients(i)) > -1 Then Continue
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
		  Dim msg As New EmailMessage
		  msg.Subject = mSubject
		  For i As Integer = 0 To UBound(mAttachments)
		    Dim a As New EmailAttachment
		    a.LoadFromFile(mAttachments(i))
		    msg.Attachments.Append(a)
		  Next
		  If mMessageBody <> "" Then msg.BodyPlainText = mMessageBody
		  If mRichTextBody <> Nil Then msg.BodyEnriched = mRichTextBody.RTFData
		  If mHTMLBody <> "" Then msg.BodyHTML = mHTMLBody
		  For i As Integer = 0 To UBound(mHeaders)
		    msg.Headers.AppendHeader(mHeaders(i).Left, mHeaders(i).Right)
		  Next
		  msg.FromAddress = SenderAddress
		  
		  Dim data As MemoryBlock = msg.Source
		  mMessageStream = New BinaryStream(data)
		  
		  'Dim cc, bcc, recip As String
		  'If True Then ' for folding only
		  'For i As Integer = 0 To UBound(mRecipients)
		  'Dim address As String = "<" + mRecipients(i) + ">"
		  'recip = recip + address
		  'If i < UBound(mRecipients) Then recip = recip + ", "
		  'Next
		  '
		  'If mCCRecipients <> Nil Then
		  'For i As Integer = 0 To UBound(mCCRecipients)
		  'Dim address As String = "<" + mCCRecipients(i) + ">"
		  'cc = cc + address
		  'If i < UBound(mCCRecipients) Then cc = cc + ", "
		  'Next
		  'End If
		  '
		  'If mBCCRecipients <> Nil Then
		  'For i As Integer = 0 To UBound(mBCCRecipients)
		  'Dim address As String = "<" + mBCCRecipients(i) + ">"
		  'bcc = bcc + address
		  'If i < UBound(mBCCRecipients) Then bcc = bcc + ", "
		  'Next
		  'End If
		  'End If
		  '
		  'Dim message As New MemoryBlock(0)
		  'mMessageStream = New BinaryStream(message)
		  'mMessageStream.Write("Subject: " + mSubject + EndOfLine.Windows)
		  'mMessageStream.Write("From: " + mSenderAddress + EndOfLine.Windows)
		  'mMessageStream.Write("Date: " + libcURL.ParseDate(New Date) + EndOfLine.Windows)
		  'For i As Integer = 0 To UBound(mHeaders)
		  'mMessageStream.Write(mHeaders(i).Left + ": " + mHeaders(i).Right + EndOfLine.Windows)
		  'Next
		  'If cc <> "" Then mMessageStream.Write("CC: " + cc + EndOfLine.Windows)
		  'If bcc <> "" Then mMessageStream.Write("BCC: " + bcc + EndOfLine.Windows)
		  'If recip <> "" Then mMessageStream.Write("To: " + recip + EndOfLine.Windows)
		  '
		  'mMessageStream.Write(EndOfLine.Windows)
		  '
		  'If UBound(mAttachments) > -1 Then
		  'Dim m As New libcURL.MultipartForm
		  'If Not m.AddElement("main", mMessageBody) Then Raise New libcURL.cURLException(m)
		  'For i As Integer = 0 To UBound(mAttachments)
		  'If Not m.AddElement(mAttachments(i).Name, mAttachments(i)) Then Raise New libcURL.cURLException(m)
		  'Next
		  'If Not m.Serialize(mMessageStream) Then Raise New libcURL.cURLException(m)
		  'Else
		  'mMessageStream.Write(mMessageBody + EndOfLine.Windows)
		  'End If
		  'mMessageStream.Close
		  'mMessageStream = New BinaryStream(message)
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
		  ReDim mHeaders(-1)
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
		Sub SetMessageHeader(Name As String, Value As String)
		  For i As Integer = 0 To UBound(mHeaders)
		    If mHeaders(i).Left = Name Then
		      If mHeaders(i).Right = "" Then
		        mHeaders.Remove(i)
		      Else
		        mHeaders(i) = mHeaders(i).Left:Value
		      End If
		      Return
		    End If
		  Next
		  mHeaders.Append(Name:Value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMessageHTML(MessageBody As String)
		  mHTMLBody = MessageBody
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMessagePlainText(MessageBody As String)
		  mMessageBody = MessageBody
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMessageRichText(MessageBody As StyledText)
		  mRichTextBody = MessageBody
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSubject(Subject As String)
		  mSubject = Subject
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
		Protected mHeaders() As Pair
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHTMLBody As String
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
		Private mRichTextBody As StyledText
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
			Name="SenderAddress"
			Group="Behavior"
			Type="String"
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
