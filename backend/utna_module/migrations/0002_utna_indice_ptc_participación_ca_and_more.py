# Generated by Django 4.0.10 on 2023-07-08 07:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('utna_module', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='utna_indice_ptc',
            name='Participación_CA',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='utna_indice_ptc',
            name='Perfil_PRODEPT',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='utna_indice_servicios',
            name='Bibliteca',
            field=models.DecimalField(decimal_places=2, default=0.0, max_digits=5),
        ),
        migrations.AddField(
            model_name='utna_indice_servicios',
            name='Conectivida',
            field=models.DecimalField(decimal_places=2, default=0.0, max_digits=5),
        ),
        migrations.AddField(
            model_name='utna_indice_servicios',
            name='Laboratorio_computo',
            field=models.DecimalField(decimal_places=2, default=0.0, max_digits=5),
        ),
        migrations.AddField(
            model_name='utna_indice_servicios',
            name='Laboratorio_practica',
            field=models.DecimalField(decimal_places=2, default=0.0, max_digits=5),
        ),
        migrations.AddField(
            model_name='utna_iseg_l',
            name='Trabaja_lugar_estadia',
            field=models.DecimalField(decimal_places=2, default=False, max_digits=5, null=True),
        ),
        migrations.AddField(
            model_name='utna_iseg_tsu',
            name='Trabaja_lugar_estadia',
            field=models.DecimalField(decimal_places=2, default=False, max_digits=5, null=True),
        ),
        migrations.AddField(
            model_name='utna_tasa_acreditacion',
            name='Fecha_acreditacion',
            field=models.DateField(default=None),
        ),
        migrations.AddField(
            model_name='utna_tasa_acreditacion',
            name='Fecha_vencimiento',
            field=models.DateField(default=None),
        ),
        migrations.AddField(
            model_name='utna_tasa_docentes',
            name='Exp_Lab_pertinente',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='utna_tasa_mov_alumnos',
            name='Estado',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='utna_tasa_mov_docentes',
            name='Estado',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='utna_tasa_acreditacion',
            name='Acreditacion',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='utna_tasa_mov_alumnos',
            name='Paises',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='utna_tasa_mov_docentes',
            name='Paises',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='utna_tasa_pe_pertinencia',
            name='Presenta',
            field=models.BooleanField(default=False),
        ),
    ]
