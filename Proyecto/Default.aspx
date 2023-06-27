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
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>jose</td>
                    <td>Morales</td>
                    <td>mani</td>
                    <td><button type="button" class="btn btn-primary">Atendido</button>
                        <button type="button" class="btn btn-danger">Elminar</button>
                        <button type="button" class="btn btn-secondary">Reprogramar</button>
                    </td>
                    


                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td><button type="button" class="btn btn-primary">Atendido</button>
                        <button type="button" class="btn btn-danger">Elminar</button>
                        <button type="button" class="btn btn-secondary">Reprogramar</button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                    <td><button type="button" class="btn btn-primary">Atendido</button>
                        <button type="button" class="btn btn-danger">Elminar</button>
                        <button type="button" class="btn btn-secondary">Reprogramar</button>
                    </td>
                </tr>
            </tbody>
        </table>

       <div></div>


    </main>

</asp:Content>
