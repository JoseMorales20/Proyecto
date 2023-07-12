<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Proyecto.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .body {
            background-color: #e5e5f7;
            background-image: radial-gradient(#3d44d0 0.5px, #e5e5f7 0.5px);
            background-size: 10px 10px;
            display: flex;
            min-height: 100vh;
        }

        .container-2 {
            background-color: #8698D9;
            margin: auto;
            width: 90%;
            max-width: 400px;
            padding: 4.5em 3em;
            border-radius: 10px;
            box-shadow: 0 5px 10px -5px rgb(0 0 0 / 30%)
        }

        .btn {
            display: block;
            padding: 0.5rem 1rem;
            width: 200px;
            margin: 0 auto;
            margin-top: 15px
        }
    </style>
    <body>
        <div class="container-2">
            <div class="col-12">
                <h3 class="form_titulo">Tutor</h3>
            </div>
            <div class="row">
                <div class="col-6">
                    <label>Nombre</label>
                    <input type="text" class="form-control" placeholder="Nombre" aria-label="Nombre">
                </div>
                <div class="col-6">
                    <label>Apellido</label>
                    <input type="text" class="form-control" placeholder="Apellido" aria-label="Apellido">
                </div>

            </div>
            <div class="row">
                <div class="col-6">
                    <label for="inputAddress" class="form-label">Rut</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="Rut">
                </div>
                <div class="col-6">
                    <label for="inputAddress" class="form-label">Telefono</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="Telefono">
                </div>
            </div>
            <div class="col-12">
                <label for="inputAddress" class="form-label">Dirección</label>
                <input type="text" class="form-control" id="inputAddress" placeholder="Direccion">
            </div>
            <div class="col-12">
                <label for="inputAddress" class="form-label">E-mail</label>
                <input type="text" class="form-control" id="inputAddress" placeholder="E-mail">
            </div>
            <div classs="col-12">
                <h3 class="form_titulo">Paciente</h3>
            </div>
            <div class="row">
                <div class="col-6">
                    <label>Nombre</label>
                    <input type="text" class="form-control" placeholder="Nombre" aria-label="Nombre">
                </div>
                <div class="col-6">
                    <label for="inputState" class="form-label">Genero</label>
                    <select id="inputState" class="form-select">
                        <option selected>Macho</option>
                        <option>Hembra</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-5">
                    <label for="inputState" class="form-label">Especie</label>
                    <select id="inputState" class="form-select">
                        <option selected>Canino</option>
                        <option>Felino</option>
                    </select>
                </div>
                <div class="col-4">
                    <label class="form-label">Peso</label>
                    <input type="text" class="form-control" placeholder="Peso">
                </div>
                <div class="col-3">
                    <label class="form-label">Edad</label>
                    <input type="text" class="form-control" placeholder="Edad">
                </div>
                <div class="col-12">
                    <label class="form-label">Fecha de ingreso</label>
                    <asp:TextBox runat="server" CssClass="form-control" TextMode="Date" ID="tbFecha"></asp:TextBox>
                </div>
            </div>
            <div class="col-12">
                <asp:Button runat="server" CssClass="btn btn-primary" ID="btnIngresar" Text="Ingresar" OnClick="btnIngresar_Click" />
            </div>

        </div>
    </body>
</asp:Content>
