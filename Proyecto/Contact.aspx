<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Proyecto.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        :root {
            --primary-clr: #0026ff;
        }

        * {
            margin: 0;
            padding: 0;
            align-sizen: boder box;
            font-family: "Poppins", sans-serif;
        }

        main {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-items: center;
            background-color: #e2e1dc;
        }

        .container2 {
            position: relative;
            width: 1000px;
            min-height: 850px;
            margin: 0 auto;
            padding: 5px;
            color: #fff;
            border-radius: 10px;
            background-color: #373c4f;
        }

        .left {
            width: 70%;
            padding: 20px;
        }

        .calendar {
            position: relative;
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            flex-wrap: wrap;
            justify-content: space-between;
            color: #878895;
            border-radius: 0 5px 5px 0;
            background-color:;
        }

            .calendar.month {
                width: 100%;
                height: 150px;
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 0 50px;
                font-size: 1.2rem;
                text-transform: capitalize;
            }

                .calendar .month .prev,
                .calendar .month .next {
                    cursor: pointer;
                }

                    .calendar .month .prev:hover,
                    .calendar .month .next:hover {
                        color: var(--primary-clr);
                    }

            .calendar .semana {
                width: 100%;
                height: 150px;
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 0 50px;
                font-size: 1.2rem;
                font-weight: 500;
                text-transform: capitalize;
            }

                .calendar .semana div {
                    width: 14.28%;
                    height: 100%;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                }

            .calendar .dias {
                width: 100%;
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                padding: 0 20px;
                font-size: 1rem;
                font-weight: 500;
                margin-bottom: 20px;
            }

                .calendar .dias .dia {
                    width: 14.28%;
                    height: 90px;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    cursor: pointer;
                    color: var(--primary-clr);
                    border: 1px solid black;
                }

            .calendar .dia:not(.prev-date, .next-date):hover {
                color: black;
                background-color: var(--primary-clr);
            }

            .calendar .dias .prev-date,
            .calendar .dias .next-date {
                color: blueviolet
            }

            .calendar .dias .active {
                position: relative;
                font-size: 2rem;
                color: beige;
                background-color: var(--primary-clr);
            }

                .calendar .dias .active::before {
                    content: "";
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    box-shadow: 0 0 10px 2px var(--primary-clr);
                }

            .calendar .dias .today {
                font-size: 2rem;
            }

            .calendar .dias .evento {
                position: relative;
            }

                .calendar .dias .evento::after {
                    content: "";
                    position: absolute;
                    bottom: 10%;
                    left: 50%;
                    width: 75%;
                    height: 6px;
                    border-radius: 30px;
                    transform: translateX(-50%);
                    background: var(--primary-clr);
                }

            .calendar .goto-hoy {
                width: 100%;
                height: 50px;
                display: flex;
                align-items: center;
                justify-content: space-between;
                gap: 5px;
                padding: 0 20px;
                margin-bottom: 20px;
                color: var(--primary-clr);
            }

                .calendar .goto-hoy .goto input {
                    width: 100%;
                    height: 30px;
                    outline: none;
                    border: none;
                    border-radius: 5px;
                    padding: 0 20px;
                    color: var(--primary-clr);
                    border-radius: 5px;
                }

                .calendar .goto-hoy button {
                    padding: 5px 10px;
                    border: 1px solid var(--primary-clr);
                    border-radius: 5px;
                    background-color: transparent;
                    cursor: pointer;
                    color: var(--primary-clr);
                }

                    .calendar .goto-hoy button:hover {
                        color: antiquewhite;
                        background-color: var(--primary-clr);
                    }

                .calendar .goto-hoy .goto button {
                    border: none;
                    border-left: 1px solid var(--primary-clr);
                    border-radius: 0;
                }

        .container2 .right {
            width: 100%;
            height: 50%;
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            align-items: center;
            justify-content: space-between;
            padding: 0 40px;
            padding-left: 70px;
            margin-top: 50px;
            margin-bottom: 20px;
            text-transform: capitalize;
        }

        .dia-date .evento-dia {
            font-size: 2rem;
            font-weight: 500;
        }

        .dia-date .evento-dia {
            font-size: 1rem;
            font-weight: 400;
            color: #878895;
        }

        .agendas {
            width: 100%;
            height: 100%;
            max-height: 600px;
            overflow-x: hidden;
            overflow-y: auto;
            display: flex;
            flex-direction: column;
            padding: 4px;
        }

            .agendas .agenda {
                position: relative;
                width: 95%;
                min-height: 70px;
                display: flex;
                justify-content: center;
                flex-direction: column;
                gap: 5px;
                padding: 0 20px;
                padding-left: 50px;
                color: #fff;
                cursor: pointer;
                background: linear-gradient(90deg, #3f4458, transparent);
            }

                .agendas .agenda:nth-child(even) {
                    background trasnparent;
                }

                .agendas .agenda .titulo .agenda-titulo {
                    font-size: 1rem;
                    font-weight: 400;
                    margin-left: 20px;
                }

        .agenda::after {
            content: " ✓ ";
            position: absolute;
            top: 50%;
            right: 0;
            font-size: 3rem;
            display: flex;
            align-items: center;
            justify-content: center;
            opacity: 0.3;
            color: var(--primary-clr);
            transform: translateY(-50%);
        }

        .add-event-wraper {
            position: absolute;
            bottom: 100px;
            left: 50%;
            width: 90%;
            max-height: 0;
            overflow: hidden;
            border-radius: 5px;
            background-color: #fff;
            transform: translateX(-50%);
            transition: max-heigth 0.5s;
        }

        .add.add-event-wraper.active {
            max-height: 300px;
        }

        .add-event-header {
            width: 100%;
            height: 50px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
            border-bottom: 1px solid #f5f5f5;
        }

            .add-event-header .close:hover {
                color: var(--primary-clr);
            }

            .add-event-header .titulo {
                font-size: 1.2rem;
                font-weight: 500;
            }

        .add-event-body {
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            gap: 5px;
            padding: 20px;
        }


        {
    </style>
    <main>
        <div class="container2">
            <div class="left">
                <div class="calendar">
                    <div class="month">
                        <i class="fa fa-angle-left prev"></i>
                        <div class="date">noviembre</div>
                        <i class="fa fa-angle-right next"></i>
                    </div>
                    <div class="semana">
                        <div>Lunes</div>
                        <div>Martes</div>
                        <div>Miercoles</div>
                        <div>Jueves</div>
                        <div>Viernes</div>
                        <div>Sabado</div>
                        <div>Domingo</div>
                    </div>
                    <div class="dias">
                        <div class="dia prev-date">30</div>
                        <div class="dia prev-date">31</div>
                        <div class="dia">1</div>
                        <div class="dia">2</div>
                        <div class="dia">3</div>
                        <div class="dia">4</div>
                        <div class="dia">5</div>
                        <div class="dia">6</div>
                        <div class="dia">7</div>
                        <div class="dia evento">8</div>
                        <div class="dia">9</div>
                        <div class="dia">10</div>
                        <div class="dia">11</div>
                        <div class="dia evento">12</div>
                        <div class="dia">13</div>
                        <div class="dia">14</div>
                        <div class="dia today active">15</div>
                        <div class="dia">16</div>
                        <div class="dia">17</div>
                        <div class="dia">18</div>
                        <div class="dia evento">19</div>
                        <div class="dia">20</div>
                        <div class="dia">21</div>
                        <div class="dia">22</div>
                        <div class="dia">23</div>
                        <div class="dia evento">24</div>
                        <div class="dia">25</div>
                        <div class="dia">26</div>
                        <div class="dia">27</div>
                        <div class="dia">28</div>
                        <div class="dia">29</div>
                        <div class="dia">30</div>
                        <div class="dia next-date">1</div>
                        <div class="dia next-date">2</div>
                        <div class="dia next-date">3</div>
                    </div>

                </div>

            </div>
        </div>
        <div class="right">
            <div class="dia-date">
                <div class="evento-dia">Miercoles</div>
                <div>15 de Noviembre 2023</div>
            </div>
            <div class="agendas">
                <div class="agenda">
                    <div class="titulo">
                        <i class="fas fa-circle"></i>
                        <h4 class="cita">Tobi</h4>
                        <h5>Tutor: Katrina Sanchez</h5>
                        <h5>Motivo: Peluqueria</h5>
                    </div>
                    <div class="duracion">10:00AM - 11:00AM</div>
                </div>
            </div>
            <div class="agendas">
                <div class="agenda">
                    <div class="titulo">
                        <i class="fas fa-circle"></i>
                        <h4 class="cita">Sam</h4>
                        <h5>Tutor: Valentina Morales</h5>
                        <h5>Motivo: Cirugia</h5>
                    </div>
                    <div class="duracion">12:30AM - 13:30AM</div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
