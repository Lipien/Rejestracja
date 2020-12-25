<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rejestracja.aspx.cs" Inherits="WebApplication1.Rejestracja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: left; width: 60%; margin: 0px auto;">

            <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <asp:View ID="View1" runat="server">
                    <table style="border-spacing:10px;">
                        <tr>
                            <td>Imię: </td>
                            <td>
                                <asp:TextBox ID="TextBoxImie1" runat="server"></asp:TextBox>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Nick: </td>
                            <td>
                                <asp:TextBox ID="TextBoxNick1" runat="server"></asp:TextBox>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="2">

                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>Wybierz coś</asp:ListItem>
                                    <asp:ListItem Value="PJWSTK">Student lub pracownik PJWSTK</asp:ListItem>
                                    <asp:ListItem Value="Gosc">Gość</asp:ListItem>
                                </asp:DropDownList>

                            </td>
                            <td></td>

                        </tr>
                    </table>
                </asp:View>

                <asp:View ID="View2" runat="server">
                    <table style="border-spacing:10px">
                        <tr>
                            <td>Imię: </td>
                            <td>
                                <asp:TextBox ID="TextBoxImie2" runat="server"></asp:TextBox>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Nick: </td>
                            <td>
                                <asp:TextBox ID="TextBoxNick2" runat="server"></asp:TextBox>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Nazwisko: </td>
                            <td>
                                <asp:TextBox ID="TextBoxNazwisko" runat="server"></asp:TextBox>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Kontakt e-mail: </td>
                            <td>
                                <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Nr_studenta/login: </td>
                            <td>
                                <asp:TextBox ID="TextBoxLogin" runat="server"></asp:TextBox>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Hasło: </td>
                            <td>
                                <asp:TextBox ID="TextBoxHaslo" runat="server"></asp:TextBox>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Powtórz hasło: </td>
                            <td>
                                <asp:TextBox ID="TextBoxHaslo2" runat="server"></asp:TextBox>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="OK" />  
                                 
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Przejście do wyszukiwania" OnClick="Button2_Click" />
                               

                            </td>
                            <td></td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View3" runat="server">
                     <table style="border-spacing:10px";>
                        <tr>
                            <td>Imię: </td>
                            <td>
                                <asp:TextBox ID="TextBoxImie3" runat="server"></asp:TextBox>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Nick: </td>
                            <td>
                                <asp:TextBox ID="TextBoxNick3" runat="server"></asp:TextBox>
                            </td>
                            <td></td>
                        </tr>
                         <tr><td>Dane statystyczne:</td><td></td><td></td></tr>
                         <tr>
                            <td>Rok urodzenia: </td>
                            <td>
                                <asp:TextBox ID="TextBoxRok" runat="server"></asp:TextBox>
                            </td>
                            <td></td>
                        </tr>
                         <tr>
                            <td>Grupa statystyczna: </td>
                            <td>
                               
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                                    <asp:ListItem>Student</asp:ListItem>
                                    <asp:ListItem>Informatyk</asp:ListItem>
                                    <asp:ListItem Value="Poczatkujacy">Początkujący coś</asp:ListItem>
                                </asp:DropDownList>
                               
                            </td>
                            <td></td>
                        </tr>
                          <tr>
                            <td>Czy chcesz się zarejestrować: </td>
                            <td>
                               
                                <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Text="Tak/Nie" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                               
                            </td>
                            <td></td>
                        </tr>
                          <tr>
                            <td>Nazwisko: </td>
                            <td>
                               
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                               
                            </td>
                            <td></td>
                        </tr>
                          <tr>
                            <td>e-mail: </td>
                            <td>
                               
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                               
                            </td>
                            <td></td>
                        </tr>
                            <tr>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="OK" />
                                </td>
                            <td>
                               
                                <asp:Button ID="Button4" runat="server" Text="Wyczyść" OnClick="Button4_Click" />
                               
                            </td>
                            <td></td>
                        </tr>
                          <tr>
                            <td colspan="2">
                                <asp:Button ID="Button5" runat="server" Text="Przejście do wyszukiwania" OnClick="Button5_Click" />
                              </td>
                            <td>
                               
                            </td>
                            
                        </tr>
                         </table>
                </asp:View>
            </asp:MultiView>

        </div>
    </form>
</body>
</html>
