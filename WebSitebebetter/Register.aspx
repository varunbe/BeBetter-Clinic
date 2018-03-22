<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>
<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" tagPrefix="ajax" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <ajax:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></ajax:ToolkitScriptManager>
    <div class="register">
        <h2>Patient Information</h2>
        <p>
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableHeaderCell><label class="label">First Name</label></asp:TableHeaderCell>                    
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="fTextBox" Cssclass="labels" runat="server"></asp:TextBox>
                        <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender2"  runat="server" Enabled="true" TargetControlID="fTextBox" FilterType="LowercaseLetters,UppercaseLetters"></ajax:FilteredTextBoxExtender>
                    </asp:TableHeaderCell>                   
                    <asp:TableHeaderCell><label class="label">Middle Name </label></asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="mTextBox" Text="N/A" Cssclass="labels" runat="server"></asp:TextBox>
                        <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender3"  runat="server" Enabled="true" TargetControlID="mTextBox" FilterType="LowercaseLetters,UppercaseLetters"></ajax:FilteredTextBoxExtender>
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell><label class="label">Last Name</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="lTextBox" Cssclass="labels" runat="server"></asp:TextBox>
                        <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" Enabled="true" TargetControlID="lTextBox" FilterType="LowercaseLetters,UppercaseLetters"></ajax:FilteredTextBoxExtender>
                    </asp:TableHeaderCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell><label class="label">DOB</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="DOBTextBox" placeholder="mm/dd/yyyy" Cssclass="labels" runat="server"></asp:TextBox> 
                        <ajax:CalendarExtender ID="CalendarExtender1" TargetControlID="DOBTextBox" Format="MM/dd/yyyy" runat="server"></ajax:CalendarExtender>
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell><label class="label">Age</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="ageTextBox" Cssclass="labels" runat="server"></asp:TextBox>
                        <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" Enabled="true" TargetControlID="ageTextBox" FilterType="Numbers"></ajax:FilteredTextBoxExtender>
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell><label class="label">Telephone</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="PhoneTextBox" Cssclass="labels"  runat="server"></asp:TextBox>
                        <ajax:MaskedEditExtender ID="MaskedEditExtender1" TargetControlID="PhoneTextBox" Mask="999-999-9999" runat="server"></ajax:MaskedEditExtender>                        
                    </asp:TableHeaderCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell><label class="label">Street Address</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell><asp:TextBox ID="streetTextBox" Cssclass="labels" runat="server"></asp:TextBox></asp:TableHeaderCell>
                    <asp:TableHeaderCell><label class="label">City</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="cityTextBox" Cssclass="labels" runat="server"></asp:TextBox>
                        <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" Enabled="true" TargetControlID="cityTextBox" FilterType="LowercaseLetters,UppercaseLetters" ValidChars=" "></ajax:FilteredTextBoxExtender>
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell><label class="label">State</label></asp:TableHeaderCell>
                     <asp:TableHeaderCell>
                    <asp:DropDownList  ID="StatesDDL" Cssclass="labels" runat="server" Width =" 168px"> 
                                    <asp:ListItem Enabled="true" Text="Select State" Value="-1"></asp:ListItem>
                                    <asp:ListItem Value="1" Text="AL">AL</asp:ListItem>
                                    <asp:ListItem Value="2" Text="AK">AK</asp:ListItem>
                                    <asp:ListItem Value="3" Text="AZ">AZ</asp:ListItem>
                                    <asp:ListItem Value="4" Text="AR">AR</asp:ListItem>
                                    <asp:ListItem Value="5" Text="CA">CA</asp:ListItem>
                                    <asp:ListItem Value="6" Text="CO">CO</asp:ListItem>
                                    <asp:ListItem Value="7" Text="CT">CT</asp:ListItem>
                                    <asp:ListItem Value="8" Text="DE">DE</asp:ListItem>
                                    <asp:ListItem Value="9" Text="DC">DC</asp:ListItem>
                                    <asp:ListItem Value="10" Text="FL">FL</asp:ListItem>
                                    <asp:ListItem Value="11" Text="GA">GA</asp:ListItem>
                                    <asp:ListItem Value="12" Text="HI">HI</asp:ListItem>
                                    <asp:ListItem Value="13" Text="ID">ID</asp:ListItem>
                                    <asp:ListItem Value="14" Text="IL">IL</asp:ListItem>
                                    <asp:ListItem Value="15" Text="IN">IN</asp:ListItem>
                                    <asp:ListItem Value="16" Text="IA">IA</asp:ListItem>
                                    <asp:ListItem Value="17" Text="KS">KS</asp:ListItem>
                                    <asp:ListItem Value="18" Text="KY">KY</asp:ListItem>
                                    <asp:ListItem Value="19" Text="LA">LA</asp:ListItem>
                                    <asp:ListItem Value="20" Text="ME">ME</asp:ListItem>
                                    <asp:ListItem Value="21" Text="MD">MD</asp:ListItem>
                                    <asp:ListItem Value="22" Text="MA">MA</asp:ListItem>
                                    <asp:ListItem Value="23" Text="MI">MI</asp:ListItem>
                                    <asp:ListItem Value="24" Text="MN">MN</asp:ListItem>
                                    <asp:ListItem Value="25" Text="MS">MS</asp:ListItem>
                                    <asp:ListItem Value="26" Text="MO">MO</asp:ListItem>
                                    <asp:ListItem Value="27" Text="MT">MT</asp:ListItem>
                                    <asp:ListItem Value="28" Text="NE">NE</asp:ListItem>
                                    <asp:ListItem Value="29" Text="NV">NV</asp:ListItem>
                                    <asp:ListItem Value="30" Text="NH">NH</asp:ListItem>
                                    <asp:ListItem Value="31" Text="NJ">NJ</asp:ListItem>
                                    <asp:ListItem Value="32" Text="NM">NM</asp:ListItem>
                                    <asp:ListItem Value="33" Text="NY">NY</asp:ListItem>
                                    <asp:ListItem Value="34" Text="NC">NC</asp:ListItem>
                                    <asp:ListItem Value="35" Text="ND">ND</asp:ListItem>
                                    <asp:ListItem Value="36" Text="OH">OH</asp:ListItem>
                                    <asp:ListItem Value="37" Text="OK">OK</asp:ListItem>
                                    <asp:ListItem Value="38" Text="OR">OR</asp:ListItem>
                                    <asp:ListItem Value="39" Text="PA">PA</asp:ListItem>
                                    <asp:ListItem Value="40" Text="RI">RI</asp:ListItem>
                                    <asp:ListItem Value="41" Text="SC">SC</asp:ListItem>
                                    <asp:ListItem Value="42" Text="SD">SD</asp:ListItem>
                                    <asp:ListItem Value="43" Text="TN">TN</asp:ListItem>
                                    <asp:ListItem Value="44" Text="TX">TX</asp:ListItem>
                                    <asp:ListItem Value="45" Text="UT">UT</asp:ListItem>
                                    <asp:ListItem Value="46" Text="VT">VT</asp:ListItem>
                                    <asp:ListItem Value="47" Text="VA">VA</asp:ListItem>
                                    <asp:ListItem Value="48" Text="WA">WA</asp:ListItem>
                                    <asp:ListItem Value="49" Text="WV">WV</asp:ListItem>
                                    <asp:ListItem Value="50" Text="WI">WI</asp:ListItem>
                                    <asp:ListItem Value="51" Text="WY">WY</asp:ListItem>                                    
                                
                         </asp:DropDownList>

                         </asp:TableHeaderCell>



                  <%--  <asp:TableHeaderCell><asp:TextBox ID="stateTextBox" runat="server"></asp:TextBox></asp:TableHeaderCell> --%>                   
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell><label class="label">Zip Code</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="zipCodeTextBox" Cssclass="labels" runat="server"></asp:TextBox>
                        <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender9" runat="server" Enabled="true" TargetControlID="zipCodeTextBox" FilterType="Numbers"></ajax:FilteredTextBoxExtender>
                        <ajax:MaskedEditExtender ID="MaskedEditExtender2" TargetControlID="zipCodeTextBox" Mask="99999" runat="server"></ajax:MaskedEditExtender>                        
                    </asp:TableHeaderCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell><label class="label">Insurance</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                       <asp:DropDownList ID="insuranceDDL" Cssclass="labels" runat="server" style="width: 168px;">
                           <asp:ListItem>Please Select</asp:ListItem>
                            <asp:ListItem>Blue Cross Blue Shield</asp:ListItem>
                            <asp:ListItem>Aetna</asp:ListItem>
                            <asp:ListItem>United Health</asp:ListItem>
                           <asp:ListItem>Self Pay</asp:ListItem> 
                           <asp:ListItem>Tricare</asp:ListItem>                             
                        </asp:DropDownList>

                    </asp:TableHeaderCell>
                </asp:TableRow>
               <asp:TableRow>
                    <asp:TableHeaderCell><label class="label">EmailID</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell><asp:TextBox ID="EmailID_TextBox" Cssclass="labels" runat="server"></asp:TextBox></asp:TableHeaderCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell><label class="label">Username</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell><asp:TextBox ID="userTextBox" Cssclass="labels" runat="server"></asp:TextBox></asp:TableHeaderCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell><label class="label">Password</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell><input id="PasswordTextBox" type="password" runat="server" /></asp:TableHeaderCell>
                </asp:TableRow>
             

                <asp:TableRow>

                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell><label class="label">Confirm Password</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell><input id="confirm_PasswordTextBox" type="password" runat="server" /></asp:TableHeaderCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell>
                        <label style="font-size:small;font-family:OpenDyslexic">* Use at least 8 characters</label>
                        <br />
                        <label style="font-size:small;font-family:OpenDyslexic">* Numbers or special characters are required</label>
                    </asp:TableHeaderCell>                    
                </asp:TableRow>               
            </asp:Table>
            
        </p>
        <br />
        <h2>Guardian/Parent Information</h2>
        <p>
            <asp:Table ID="Table2" runat="server">
                <asp:TableRow>
                    <asp:TableHeaderCell><label class="label">Guardian First Name</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="GFTextBox" Text="N/A" Cssclass="labels" runat="server"></asp:TextBox>
                        <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" Enabled="true" TargetControlID="GFTextBox" FilterType="LowercaseLetters,UppercaseLetters"></ajax:FilteredTextBoxExtender>
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell><label class="label">Guardian Middle Name</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="MNTextBox" Text="N/A" Cssclass="labels" runat="server"></asp:TextBox>
                        <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" Enabled="true" TargetControlID="MNTextBox" FilterType="LowercaseLetters,UppercaseLetters"></ajax:FilteredTextBoxExtender>
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell><label class="label">Guardian Last Name</label></asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:TextBox ID="LNTextBox" Text="N/A" Cssclass="labels" runat="server"></asp:TextBox>
                        <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" Enabled="true" TargetControlID="LNTextBox" FilterType="LowercaseLetters,UppercaseLetters"></ajax:FilteredTextBoxExtender>
                    </asp:TableHeaderCell>
                </asp:TableRow>               
            </asp:Table>
        </p>        
    </div>
    <br />
    <asp:Button ID="submit" Cssclass="button" runat="server" Text="Submit" Width="150px" OnClick="submit_Click" />
</asp:Content>