using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace Mail_ve_Telefon_Rehber_Kayıt_Modülü
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-48MHJFV;Initial Catalog=Telefon_Mail_Kayıt_Rehberi;Integrated Security=True");
        void listele()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * From Kayit",baglanti);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;

        }
        void temizle()
        {
            txtID.Text = "";
            txt_name.Text = "";
            txt_surname.Text = "";
            txt_telephone.Text = "";
            txt_mail.Text = "";
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            listele();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Insert into kayit (AD,SOYAD,TELEFON,MAIL) values (@p1,@p2,@p3,@p4)", baglanti);
            komut.Parameters.AddWithValue("@p1", txt_name.Text);
            komut.Parameters.AddWithValue("@p2", txt_surname.Text);
            komut.Parameters.AddWithValue("@p3", txt_telephone.Text);
            komut.Parameters.AddWithValue("@p4", txt_mail.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("KAYIT EKLENDİ", "BİLGİ", MessageBoxButtons.OK, MessageBoxIcon.Information);
            listele();
            temizle();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int secilen = dataGridView1.SelectedCells[0].RowIndex;
            txtID.Text= dataGridView1.Rows[secilen].Cells[0].Value.ToString();
            txt_name.Text = dataGridView1.Rows[secilen].Cells[1].Value.ToString();
            txt_surname.Text = dataGridView1.Rows[secilen].Cells[2].Value.ToString();
            txt_telephone.Text = dataGridView1.Rows[secilen].Cells[3].Value.ToString();
            txt_mail.Text = dataGridView1.Rows[secilen].Cells[4].Value.ToString();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            temizle();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Delete From kayit where ID=" + txtID.Text, baglanti);
            komut.ExecuteNonQuery();
            baglanti.Close();
            listele();
            temizle();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Update kayit set AD=@p1,SOYAD=@p2,TELEFON=@p3,MAIL=@p4 where ID=@p5", baglanti);
            komut.Parameters.AddWithValue("@p1", txt_name.Text);
            komut.Parameters.AddWithValue("@p2", txt_surname.Text);
            komut.Parameters.AddWithValue("@p3", txt_telephone.Text);
            komut.Parameters.AddWithValue("@p4", txt_mail.Text);
            komut.Parameters.AddWithValue("@p5", txtID.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            listele();
            temizle();
        }
    }
}
