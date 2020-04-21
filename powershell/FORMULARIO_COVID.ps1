#Formulario
$Forma=New-Object System.Windows.Forms.Form
$Forma.Text="Informacion COVID-19"
$Forma.Size=New-Object System.Drawing.Size(500,500)
$Forma.StartPosition="CenterScreen"
#Etiqueta
$Labela=New-Object System.Windows.Forms.Label
$Labela.Text="AQUI ENCONTRARAS TODA LA INFORMACION REFERIDA AL COVID-19"
$Labela.AutoSize=$True
$Labela.Location=New-Object System.Drawing.Size(50,70)
#Añadir etiqueta
$Forma.Controls.Add($Labela)


$Picture = (get-item ("C:\Users\luisa\OneDrive\Escritorio\powershell\covid.jpg"))
$img = [System.Drawing.Image]::Fromfile($Picture)
$pictureBox = new-object Windows.Forms.PictureBox
$pictureBox.Width =  $img.Size.Width
$pictureBox.Height =  $img.Size.Height
$pictureBox.Image = $img
$pictureBox.Anchor = [System.Windows.Forms.AnchorStyles]::Bottom
$pictureBox.Location=New-Object System.Drawing.Size(25,130)
$Forma.controls.add($pictureBox)

 
#Botón-------------------------------------------------------------------------------------------------------
$Buttona=New-Object System.Windows.Forms.Button
$Buttona.Size=New-Object System.Drawing.Size(80,23)
$Buttona.Text="ENTRAR"
$Buttona.Location=New-Object System.Drawing.Size(200,330)
#Añadir botón
$Forma.Controls.Add($Buttona)
$Buttona.add_click({

#Formulario
$Form=New-Object System.Windows.Forms.Form
$Form.Text="Informacion COVID-19"
$Form.Size=New-Object System.Drawing.Size(500,500)
$Form.StartPosition="CenterScreen"
#Etiqueta
$Label=New-Object System.Windows.Forms.Label
$Label.Text="1-Dale a continuar para detectar si tienes o no Covid-19 "
$Label.AutoSize=$True
$Label.Location=New-Object System.Drawing.Size(50,50)
#Añadir etiqueta
$Form.Controls.Add($Label)

 
#Botón-------------------------------------------------------------------------------------------------------
$Button=New-Object System.Windows.Forms.Button
$Button.Size=New-Object System.Drawing.Size(80,23)
$Button.Text="Continuar"
$Button.Location=New-Object System.Drawing.Size(200,100)
#Añadir botón
$Form.Controls.Add($Button)
$Button.add_click({

#Crear un formulario, añadir una etiqueta y un botón
#Formulario
$Form2=New-Object System.Windows.Forms.Form
$Form2.Text="Test Covid-19"
$Form2.Size=New-Object System.Drawing.Size(500,500)
$Form2.StartPosition="CenterScreen"
$label2 = New-Object System.Windows.Forms.Label
$label2.Location = New-Object System.Drawing.Point(140,30)
$label2.Size = New-Object System.Drawing.Size(280,20)
$label2.Text = '¿Tengo Covid-19?'
$Form2.Controls.Add($label2)

#----------------------------------------------------------------------------
$texto1 = New-Object System.Windows.Forms.Label
$texto1.Location = New-Object System.Drawing.Point(50,100)
$texto1.Size = New-Object System.Drawing.Size(280,20)
$texto1.Text = '¿Tu temperatura  corporal es superior a 37º?'
$texto1.Font= 'Microsoft Sans Serif,10'
$Form2.Controls.Add($texto1)
$acumular=[int]0

$RadioButton1 = New-Object system.Windows.Forms.RadioButton
$RadioButton1.text = "SI"
$RadioButton1.AutoSize= $true
$RadioButton1.width = 104
$RadioButton1.height = 20
$RadioButton1.location  = New-Object System.Drawing.Point(350,100)
$RadioButton1.Font  = 'Microsoft Sans Serif,10'

$RadioButton2 = New-Object system.Windows.Forms.RadioButton
$RadioButton2.text = "NO"
$RadioButton2.AutoSize= $true
$RadioButton2.width = 104
$RadioButton2.height = 20
$RadioButton2.location  = New-Object System.Drawing.Point(400,100)
$RadioButton2.Font  = 'Microsoft Sans Serif,10'
#------------------------------------------------------------------------------

$texto2 = New-Object System.Windows.Forms.Label
$texto2.Location = New-Object System.Drawing.Point(50,150)
$texto2.Size = New-Object System.Drawing.Size(280,20)
$texto2.Text = '¿Tienes tos seca ?'
$texto2.Font= 'Microsoft Sans Serif,10'
$Form2.Controls.Add($texto2)

$RadioButton3 = New-Object system.Windows.Forms.RadioButton
$RadioButton3.text = "SI"
$RadioButton3.AutoSize= $true
$RadioButton3.width = 104
$RadioButton3.height = 20
$RadioButton3.location  = New-Object System.Drawing.Point(350,150)
$RadioButton3.Font  = 'Microsoft Sans Serif,10'

$RadioButton4 = New-Object system.Windows.Forms.RadioButton
$RadioButton4.text = "NO"
$RadioButton4.AutoSize= $true
$RadioButton4.width = 104
$RadioButton4.height = 20
$RadioButton4.location  = New-Object System.Drawing.Point(400,150)
$RadioButton4.Font  = 'Microsoft Sans Serif,10'

#----------------------------------------------------------------------------------
$texto3 = New-Object System.Windows.Forms.Label
$texto3.Location = New-Object System.Drawing.Point(50,200)
$texto3.Size = New-Object System.Drawing.Size(280,20)
$texto3.Text = '¿Tienes dificuldad para respirar?'
$texto3.Font= 'Microsoft Sans Serif,10'
$Form2.Controls.Add($texto3)

$RadioButton5 = New-Object system.Windows.Forms.RadioButton
$RadioButton5.text = "SI"
$RadioButton5.AutoSize= $true
$RadioButton5.width = 104
$RadioButton5.height = 20
$RadioButton5.location  = New-Object System.Drawing.Point(350,200)
$RadioButton5.Font  = 'Microsoft Sans Serif,10'

$RadioButton6 = New-Object system.Windows.Forms.RadioButton
$RadioButton6.text = "NO"
$RadioButton6.AutoSize= $true
$RadioButton6.width = 104
$RadioButton6.height = 20
$RadioButton6.location  = New-Object System.Drawing.Point(400,200)
$RadioButton6.Font  = 'Microsoft Sans Serif,10'

#-------------------------------------------------------------------------------------


$texto4 = New-Object System.Windows.Forms.Label
$texto4.Location = New-Object System.Drawing.Point(50,250)
$texto4.Size = New-Object System.Drawing.Size(280,40)
$texto4.Text = 'Si padeces alguno de los síntomas anteriores...¿Han aparecido de repente?'
$texto4.Font= 'Microsoft Sans Serif,10'
$Form2.Controls.Add($texto4)

$RadioButton7 = New-Object system.Windows.Forms.RadioButton
$RadioButton7.text = "SI"
$RadioButton7.AutoSize= $true
$RadioButton7.width = 104
$RadioButton7.height = 20
$RadioButton7.location  = New-Object System.Drawing.Point(350,250)
$RadioButton7.Font  = 'Microsoft Sans Serif,10'


$RadioButton8 = New-Object system.Windows.Forms.RadioButton
$RadioButton8.text = "NO"
$RadioButton8.AutoSize= $true
$RadioButton8.width = 104
$RadioButton8.height = 20
$RadioButton8.location  = New-Object System.Drawing.Point(400,250)
$RadioButton8.Font  = 'Microsoft Sans Serif,10'
$RadioButton8.add_click({
$acumular++

})



#Botón-------------------------------------------------------------------------------------------------------
$ButtonCon=New-Object System.Windows.Forms.Button
$ButtonCon.Size=New-Object System.Drawing.Size(80,23)
$ButtonCon.Text="Continuar"
$ButtonCon.Location=New-Object System.Drawing.Size(200,350)
$ButtonCon.DialogResult=[System.Windows.Forms.DialogResult]::OK
#Añadir botón
$Form2.Controls.Add($ButtonCon)

$Form2.controls.AddRange(@($RadioButton1,$RadioButton2,$RadioButton3,$RadioButton4,$RadioButton5,
$RadioButton6,$RadioButton7,$RadioButton8))


$resultado=$Form2.ShowDialog()

#$ButtonCon.add_click({

#"positivo" > coronaVirus.txt; Get-Content (Get-ChildItem ./coronaVirus.txt)


if ($resultado -eq [System.Windows.Forms.DialogResult]::OK)
{#CREO EL FICHERO CON LA PALABRA POSITIVO 
"positivo" > coronaVirus.txt; Get-Content (Get-ChildItem ./coronaVirus.txt)

#Crear un formulario, añadir una etiqueta y un botón
#Formulario
$Form3=New-Object System.Windows.Forms.Form
$Form3.Text="HAS DADO POSITIVO EN COVID-19"
$Form3.Size=New-Object System.Drawing.Size(500,500)
$Form3.StartPosition="CenterScreen"
$Picture1 = (get-item ("C:\Users\luisa\OneDrive\Escritorio\powershell\positivo1.jpg"))
$img = [System.Drawing.Image]::Fromfile($Picture1)
$pictureBox1 = new-object Windows.Forms.PictureBox
$pictureBox1.Width =  $img.Size.Width
$pictureBox1.Height =  $img.Size.Height
$pictureBox1.Image = $img
$pictureBox1.Anchor = [System.Windows.Forms.AnchorStyles]::Bottom
$pictureBox1.Location=New-Object System.Drawing.Size(85,1)
$Form3.controls.add($pictureBox1)
#Botón3------------------------------------------------------------------------------------
$botonSalir2=New-Object System.Windows.Forms.Button
$botonSalir2.Size=New-Object System.Drawing.Size(80,23)
$botonSalir2.Text="Salir"
$botonSalir2.Location=New-Object System.Drawing.Size(200,430)
#Añadir botón3
$Form3.Controls.Add($botonSalir2)
#Defino el evento al hacer el clic
$botonSalir2.Add_Click({$Form3.Close(),$Form2.Close(),$Form.Close(),$Forma.Close()})
$Form3.ShowDialog()






# AQUI ES DONDE DA FALLO NO CONSIGO ENTRAR POR ESTE ELSEIF PARA SACAR EL ARCHIVO TXT DE NEGATIVO 






}elseif($RadioButton8 -eq "NO"){
# CREO EL FICHERO CON LA PALABRA NEGATIVO 
"negativo" > coronaVirus.txt; Get-Content (Get-ChildItem ./coronaVirus.txt)

#Crear un formulario, añadir una etiqueta y un botón
#Formulario
$Form3=New-Object System.Windows.Forms.Form
$Form3.Text="HAS DADO NEGATIVO EN COVID-19"
$Form3.Size=New-Object System.Drawing.Size(500,500)
$Form3.StartPosition="CenterScreen"
$Picture2 = (get-item ("C:\Users\luisa\OneDrive\Escritorio\powershell\negativo1.jpg"))
$img = [System.Drawing.Image]::Fromfile($Picture2)
$pictureBox2 = new-object Windows.Forms.PictureBox
$pictureBox2.Width =  $img.Size.Width
$pictureBox2.Height =  $img.Size.Height
$pictureBox2.Image = $img
$pictureBox2.Anchor = [System.Windows.Forms.AnchorStyles]::Bottom
$pictureBox2.Location=New-Object System.Drawing.Size(85,1)
$Form3.controls.add($pictureBox2)
#Botón3------------------------------------------------------------------------------------
$botonSalir3=New-Object System.Windows.Forms.Button
$botonSalir3.Size=New-Object System.Drawing.Size(80,23)
$botonSalir3.Text="Salir"
$botonSalir3.Location=New-Object System.Drawing.Size(200,430)
#Añadir botón3
$Form3.Controls.Add($botonSalir3)
#Defino el evento al hacer el clic
$botonSalir3.Add_Click({$Form3.Close(),$Form2.Close(),$Form.Close(),$Forma.Close()})
$Form3.ShowDialog()
}



})






#})


#Etiqueta
$etiqueta2=New-Object System.Windows.Forms.Label
$etiqueta2.Text="2-Dale a Escanear para comprobar si has tenido contacto con alguien con Covid-19 "
$etiqueta2.AutoSize=$True
$etiqueta2.Location=New-Object System.Drawing.Size(50,150)
#Añadir etiqueta
$Form.Controls.Add($etiqueta2)

#Botón1-------------------------------------------------------------------------------------------------------
$Button1=New-Object System.Windows.Forms.Button
$Button1.Size=New-Object System.Drawing.Size(80,23)
$Button1.Text="Escanear"
$Button1.Location=New-Object System.Drawing.Size(200,200)
#Añadir botón1
$Form.Controls.Add($Button1)

$Button1.add_click({






if((gc (ls ./coronaVirus.txt)) -eq "positivo" ){


#Formulario
$Formas=New-Object System.Windows.Forms.Form
$Formas.Text="Informacion COVID-19"
$Formas.Size=New-Object System.Drawing.Size(500,500)
$Formas.StartPosition="CenterScreen"
#Etiqueta
$Labelas=New-Object System.Windows.Forms.Label
$Labelas.Text="Has estado en contacto con alguien con Corona virus, es conveniente que llames al 112"
$Labelas.AutoSize=$True
$Labelas.Location=New-Object System.Drawing.Size(50,100)
#Añadir etiqueta
$Formas.Controls.Add($Labelas)

#Botón3------------------------------------------------------------------------------------
$botonSalir1=New-Object System.Windows.Forms.Button
$botonSalir1.Size=New-Object System.Drawing.Size(80,23)
$botonSalir1.Text="Volver"
$botonSalir1.Location=New-Object System.Drawing.Size(200,300)
#Añadir botón3
$Formas.Controls.Add($botonSalir1)
#Defino el evento al hacer el clic
$botonSalir1.Add_Click({$Formas.Close()})


$Formas.ShowDialog()

}elseif((gc (ls ./coronaVirus.txt)) -eq "negativo" ){


#Formulario
$Formas=New-Object System.Windows.Forms.Form
$Formas.Text="Informacion COVID-19"
$Formas.Size=New-Object System.Drawing.Size(500,500)
$Formas.StartPosition="CenterScreen"
#Etiqueta
$Labelas=New-Object System.Windows.Forms.Label
$Labelas.Text="No has tenido contacto con nadie que haya dado positivo en Covid-19"
$Labelas.AutoSize=$True
$Labelas.Location=New-Object System.Drawing.Size(50,100)
#Añadir etiqueta
$Formas.Controls.Add($Labelas)

#Botón3------------------------------------------------------------------------------------
$botonSalir1=New-Object System.Windows.Forms.Button
$botonSalir1.Size=New-Object System.Drawing.Size(80,23)
$botonSalir1.Text="Volver"
$botonSalir1.Location=New-Object System.Drawing.Size(200,300)
#Añadir botón3
$Formas.Controls.Add($botonSalir1)
#Defino el evento al hacer el clic
$botonSalir1.Add_Click({$Formas.Close()})

$Formas.ShowDialog()

}



})



#Botón3------------------------------------------------------------------------------------
$Button3=New-Object System.Windows.Forms.Button
$Button3.Size=New-Object System.Drawing.Size(80,23)
$Button3.Text="Salir"
$Button3.Location=New-Object System.Drawing.Size(200,350)
#Añadir botón3
$Form.Controls.Add($Button3)
#Defino el evento al hacer el clic
$Button3.Add_Click({$Form.Close(),$Forma.Close()})


$Form.ShowDialog()})


#Botón3------------------------------------------------------------------------------------
$botonSalir=New-Object System.Windows.Forms.Button
$botonSalir.Size=New-Object System.Drawing.Size(80,23)
$botonSalir.Text="Salir"
$botonSalir.Location=New-Object System.Drawing.Size(200,380)
#Añadir botón3
$Forma.Controls.Add($botonSalir)
#Defino el evento al hacer el clic
$botonSalir.Add_Click({$Forma.Close()})



$Forma.ShowDialog()