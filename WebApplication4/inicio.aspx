<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="WebApplication4.inicio" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Calculadora Web</title>
    <style>
        * { box-sizing: border-box; }
        body {
            margin: 0; min-height: 100vh; display: flex; align-items: center;
            justify-content: center; padding: 24px;
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #eee8ff, #f7f5ff);
            color: #27213a;
        }
        .calculadora {
            width: 100%; max-width: 430px; padding: 30px;
            background: #fff; border-radius: 20px;
            box-shadow: 0 14px 40px rgba(70, 45, 130, .16);
        }
        h1 { margin: 0 0 8px; text-align: center; color: #6941c6; font-size: 28px; }
        .subtitulo { margin: 0 0 26px; text-align: center; color: #777184; }
        .campo { display: block; margin: 17px 0 7px; font-weight: 600; }
        .entrada, .selector {
            width: 100%; padding: 12px 13px; border: 1px solid #d9d2eb;
            border-radius: 9px; font-size: 16px; background: #fff; color: #27213a;
        }
        .entrada:focus, .selector:focus { outline: 2px solid #b9a2f5; border-color: #805ad5; }
        .boton {
            width: 100%; margin-top: 22px; padding: 13px;
            border: 0; border-radius: 9px; background: #7047c8;
            color: #fff; font-size: 16px; font-weight: 700; cursor: pointer;
        }
        .boton:hover { background: #5934ad; }
        .resultado {
            display: block; min-height: 48px; margin-top: 20px; padding: 13px;
            border-radius: 9px; background: #f3efff; color: #4b2b91;
            text-align: center; font-size: 20px; font-weight: 700; overflow-wrap: anywhere;
        }
        .limpiar {
            display: block; margin: 14px auto 0; border: 0; background: transparent;
            color: #6941c6; cursor: pointer; text-decoration: underline; font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <main class="calculadora">
            <h1>Calculadora Web</h1>
            <p class="subtitulo">Realiza operaciones matemáticas básicas</p>

            <label class="campo" for="tn1">Primer número</label>
            <asp:TextBox ID="tn1" runat="server" CssClass="entrada" TextMode="Number"
                step="any" placeholder="Escribe el primer número" />

            <label class="campo" for="tn2">Segundo número</label>
            <asp:TextBox ID="tn2" runat="server" CssClass="entrada" TextMode="Number"
                step="any" placeholder="Escribe el segundo número" />

            <label class="campo" for="doperacion">Operación</label>
            <asp:DropDownList ID="doperacion" runat="server" CssClass="selector">
                <asp:ListItem Value="suma">Suma (+)</asp:ListItem>
                <asp:ListItem Value="resta">Resta (−)</asp:ListItem>
                <asp:ListItem Value="multiplicacion">Multiplicación (×)</asp:ListItem>
                <asp:ListItem Value="division">División (÷)</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="bresultado" runat="server" CssClass="boton"
                Text="Calcular resultado" OnClick="bresultado_Click" />

            <asp:Label ID="lresultado" runat="server" CssClass="resultado"
                Text="El resultado aparecerá aquí" />

            <asp:Button ID="blimpiar" runat="server" CssClass="limpiar"
                Text="Limpiar calculadora" CausesValidation="false" OnClick="blimpiar_Click" />
        </main>
    </form>
</body>
</html>
