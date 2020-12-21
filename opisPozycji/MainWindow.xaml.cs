using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml;
using System.Xml.Linq;

namespace opisPozycji
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public List<wynik> wynikList = new List<wynik>();
        public string baza = "";
        public MainWindow()
        {
            InitializeComponent();
            setup();
        }

        public void setup()
        {
            XmlDocument doc = new XmlDocument();
            doc.Load("setup.xml");
            //baza = "Tablice";
            baza = doc.GetElementsByTagName("baza").Item(0).InnerText.ToString();
            
        }

        private void butEnter_Click(object sender, RoutedEventArgs e)
        {
            dgWynik.DataContext = null;
            wynikList.Clear();
            string sql = "select* from hanPozycjaDokumentuHandlowego where Opis LIKE '%" + tbOpis.Text + "%'";
            string connStr = @"Data Source = .\ILUO; Initial Catalog=" + baza + "; Integrated Security = true;";
            SqlConnection conn = new SqlConnection(connStr);
            SqlDataAdapter da = new SqlDataAdapter(sql, connStr);
            DataSet ds = new DataSet();
            da.Fill(ds, "tabOpis");
            DataTable dt = ds.Tables["tabOpis"];
            DataTable dt1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                //MessageBox.Show(dt.Rows[i][5].ToString());
                sql = "select * from hanDokumentHandlowy where IdDokumentu = " + dt.Rows[i][1].ToString();
                ds = new DataSet();
                da = new SqlDataAdapter(sql, connStr);
                da.Fill(ds, "tabDokum");
                dt1 = ds.Tables["tabDokum"];
                wynikList.Add(new wynik()
                {
                    nazwaPozycji = dt.Rows[i][3].ToString(),
                    opisPozycji = dt.Rows[i][5].ToString(),
                    numerDokumentu = dt1.Rows[0][8].ToString(),
                    dataDokumentu = dt1.Rows[0][7].ToString(),
                });
            }
            //dgWynik.DataContext = dt;
            conn.Close();
            dgWynik.DataContext = wynikList;
        }
    }
}
