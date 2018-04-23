# How to set the text max length in the ASPxMemo control


<p><strong>UPDATED:</strong><br><br>Starting with version v2013 vol 1 (13.1) the ASPxMemo.MaxLength property is available out-of-the-box.<br>Please refer to the <a href="https://www.devexpress.com/Support/Center/p/S91467">S91467: ASPxMemo - Support MaxLength</a> report for more information.<br><br>This example shows how to set the text max length in the ASPxMemo control.<br><br>If an end-user types in text or pastes it by using a corresponding shortcut, you can crop the text in the KeyDown event handler when its length exceeds the max value. If the end-user pastes text to ASPxMemo by using the context menu, you can crop the text in the "paste" event handler of the ASPxMemo "textarea" element. We disable the context menu for ASPxMemo in the Opera browser because it does not provide the "paste" event.</p>
<p><br><strong>See also:<br></strong><a href="https://www.devexpress.com/Support/Center/p/E393">OBSOLETE: ASPxMemo - How to limit the length of text that can be entered into the control using MaxLength</a><br><a href="https://www.devexpress.com/Support/Center/p/E1424">How to implement the "characters remaining" functionality for ASPxTextBox and ASPxMemo using MaxLength</a></p>

<br/>


