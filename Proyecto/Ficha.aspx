<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ficha.aspx.cs" Inherits="Proyecto.Ficha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .imagen {
            width: 150px;
            height: 150px;
        }

        .p {
            text-align: center;
        }

        .c {
            background-color: lightcyan;
        }

        .m {
            margin-top: 10px;
        }
        #espacio {margin-top: 0px; margin-bottom: 0px; !important}
    </style>
    <body>
        <div class="row" style="background-color: lightskyblue">
            <div class="col-4">
                <img src="Scripts/foto.ico" class="imagen rounded-circle img-thumbnail" />
            </div>
            <div class="col-6" style="margin-top: 50px">
                <h1>Clinica Veterinaria</h1>
            </div>
        </div>
        <div class="row c p">
            <div class="col-5 ">
                <label for="Nombre">Nombre</label>
                <div>
                    <input placeholder="Nombre" />
                </div>
            </div>
            <div class="col-5">
                <label for="Nombre">Numero de Ficha</label>
                <div>
                    <input placeholder="Numero de ficha" />
                </div>
            </div>
        </div>
        <div class="row c p">
            <div class="col-5">
                <label for="Apellido">Apellido</label>
                <div>
                    <input placeholder="Apellido" />
                </div>
            </div>
            <div class="col-5" aling="center">
                <label class="form-label">Fecha de ingreso</label>
                <asp:TextBox runat="server" CssClass="form-control" TextMode="Date" style="text-align: center"></asp:TextBox>
            </div>
        </div>
        <div class="row c p">
            <div class="col-5">
                <label class="form-label">Edad</label>
                <div>
                    <input placeholder="Edad" />
                </div>
            </div>
            <div class="col-5">
                <label for="Motivo" class="form-label">Motivo de la consulta</label>
                <textarea class="form-control" id="Motivo" rows="2"></textarea>
            </div>
        </div>
        <div class="row c p">
            <div class="col-10">
                <h6>Especie</h6>
            </div>
            <div class="col-5 form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                    Felino
                </label>
            </div>
            <div class="col-5 form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                <label class="form-check-label" for="flexRadioDefault2">
                    Canino
                </label>
            </div>

        </div>
        <div class="row c p">
            <div class="col-10">
                <h6>Sexo</h6>
            </div>
            <div class="col-5 form-check" style="align-items: end">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="SexoMacho">
                <label class="form-check-label" for="flexRadioDefault1">
                    Macho
                </label>
            </div>
            <div class="col-5 form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="SexoHembra" checked>
                <label class="form-check-label" for="flexRadioDefault2">
                    Hembra
                </label>
            </div>
        </div>
        <div class="row c p">
            <div class="col-12">
                <h4>Observaciones</h4>
            </div>
            <textarea class=" form-control" placeholder="Observaciones" id="Observaciones"></textarea>
        </div>
        <div class="row c p">
            <div class="col-12">
                <h4>Tratamiento y recomendaciones</h4>
            </div>
            <textarea class=" form-control" placeholder="Observaciones" id="Tratamiento"></textarea>
        </div>
        <div class="row c" id="espacio">

        </div>
        <div class="c p">
            <asp:Button runat="server" CssClass="btn btn-primary" Text="Guardar"  />
        </div>



    </body>
</asp:Content>
