using System;
using System.Globalization;
using System.Web.UI;

namespace WebApplication4
{
    public partial class inicio : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void bresultado_Click(object sender, EventArgs e)
        {
            decimal num1;
            decimal num2;

            if (!TryParseNumero(tn1.Text, out num1))
            {
                lresultado.Text = "Error: escribe un primer número válido.";
                return;
            }

            if (!TryParseNumero(tn2.Text, out num2))
            {
                lresultado.Text = "Error: escribe un segundo número válido.";
                return;
            }

            decimal resultado;

            switch (doperacion.SelectedValue)
            {
                case "suma":
                    resultado = num1 + num2;
                    break;

                case "resta":
                    resultado = num1 - num2;
                    break;

                case "multiplicacion":
                    resultado = num1 * num2;
                    break;

                case "division":
                    if (num2 == 0)
                    {
                        lresultado.Text = "Error: no se puede dividir entre cero.";
                        return;
                    }
                    resultado = num1 / num2;
                    break;

                default:
                    lresultado.Text = "Selecciona una operación válida.";
                    return;
            }

            lresultado.Text = "Resultado: " + resultado.ToString("0.############################", CultureInfo.CurrentCulture);
        }

        private bool TryParseNumero(string texto, out decimal numero)
        {
            // Primero intenta con la configuración regional del equipo.
            if (decimal.TryParse(texto, NumberStyles.Number, CultureInfo.CurrentCulture, out numero))
                return true;

            // Como alternativa, permite decimales escritos con punto.
            return decimal.TryParse(texto, NumberStyles.Number, CultureInfo.InvariantCulture, out numero);
        }

        protected void blimpiar_Click(object sender, EventArgs e)
        {
            tn1.Text = "";
            tn2.Text = "";
            doperacion.SelectedIndex = 0;
            lresultado.Text = "El resultado aparecerá aquí";
        }
    }
}
