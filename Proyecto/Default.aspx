<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proyecto._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div>
            <h1>Agenda de hoy</h1>
        </div>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Codigo</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">Paciente</th>
                    <th scope="col">hora</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>jose</td>
                    <td>Morales</td>
                    <td>mani</td>
                    <td>15:00</td>
                    <td>
                        <asp:Button runat="server" CssClass="btn btn-primary" ID="btnReprogramar" Text="Reprogramar" OnClick="btnReprogramar_Click" />
                        <asp:Button runat="server" CssClass="btn btn-danger" ID="btnEliminar" Text="Eliminar" OnClick="btnEliminar_Click" />
                    </td>



                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Valentina</td>
                    <td>Morales</td>
                    <td>tobi</td>
                    <td>14:30</td>
                    <td>
                        <asp:Button runat="server" CssClass="btn btn-primary" ID="Button1" Text="Reprogramar" OnClick="btnReprogramar_Click" />
                        <asp:Button runat="server" CssClass="btn btn-danger" ID="Button2" Text="Eliminar" OnClick="btnEliminar_Click" />
                    </td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>David</td>
                    <td>Morales</td>
                    <td>Atenea</td>
                    <td>11:00</td>
                    <td>
                        <asp:Button runat="server" CssClass="btn btn-primary" ID="Button3" Text="Reprogramar" OnClick="btnReprogramar_Click" />
                        <asp:Button runat="server" CssClass="btn btn-danger" ID="Button4" Text="Eliminar" OnClick="btnEliminar_Click" />

                    </td>
                </tr>
            </tbody>
        </table>

        <div></div>


    </main>



</asp:Content>
