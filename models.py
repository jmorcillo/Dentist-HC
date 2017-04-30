from __future__ import unicode_literals

from django.db import models

from django.contrib.auth.models import User

class Doctor(models.Model):
	TIPO_IDENTIFICACION = (
    ('CC', 'Cedula de ciudadania'),
    ('CE', 'Cedula de extranjeria'),
    ('PA', 'Pasaporte'),
    ('TI', 'Tarjeta de identidad'),
    ('RC', 'Registro civil'),
	)
	user = models.OneToOneField(User, on_delete=models.CASCADE)
	identificacion = models.CharField(max_length=20, unique=True)
	tipo_identificacion = models.CharField(max_length=2, choices=TIPO_IDENTIFICACION)
	resolucion = models.IntegerField()
	direccion = models.TextField()
	telefono_fijo = models.CharField(max_length=12)
	telefono_celular = models.CharField(max_length=12)
	fecha_nacimiento = models.DateField()
	edad = models.IntegerField()
	def __unicode__(self):
		return '{}'.format(self.identificacion)

class Paciente(models.Model):
	TIPO_IDENTIFICACION = (
    ('CC', 'Cedula de ciudadania'),
    ('CE', 'Cedula de extranjeria'),
    ('PA', 'Pasaporte'),
    ('TI', 'Tarjeta de identidad'),
    ('RC', 'Registro civil'),
	)
	SEXO = (
    ('M', 'Masculino'),
    ('F', 'Femenino'),
	)
	DEPARTAMENTO = (
    ('CU', 'Cundinamarca'),
    ('BO', 'Boyaca'),
    ('VA', 'Valle del Cauca'),
    ('AN', 'Antioquia'),
    ('ME', 'Meta'),
	)
	CIUDAD = (
    ('BO', 'Bogota'),
    ('TU', 'Tunja'),
    ('CA', 'Cali'),
    ('ME', 'Medellin'),
    ('VI', 'Villavicencio'),
	)
	RH = (
    ('O+', 'O+'),
    ('O-', 'O-'),
    ('A+', 'A+'),
    ('A-', 'A-'),
    ('B+', 'B+'),
    ('B-', 'B-'),
    ('AB+', 'AB+'),
    ('AB-', 'AB-'),
	)
	user = models.OneToOneField(User, on_delete=models.CASCADE)
	identificacion = models.CharField(max_length=20, unique=True)
	tipo_identificacion = models.CharField(max_length=2, choices=TIPO_IDENTIFICACION)
	direccion = models.TextField()
	telefono_fijo = models.CharField(max_length=12)
	telefono_celular = models.CharField(max_length=12)
	departamento = models.CharField(max_length=2, choices=DEPARTAMENTO)
	ciudad = models.CharField(max_length=2, choices=CIUDAD)
	sexo = models.CharField(max_length=1, choices=SEXO)
	fecha_nacimiento = models.DateField()
	edad = models.IntegerField()
	nacionalidad = models.CharField(max_length=30)
	rh = models.CharField(max_length=2, choices=RH)
	nombres_acuediente = models.CharField(max_length=50)
	telefono_acuediente = models.CharField(max_length=20)
	def __unicode__(self):
		return '{}'.format(self.identificacion)

class Asistente(models.Model):
	TIPO_IDENTIFICACION = (
    ('CC', 'Cedula de ciudadania'),
    ('CE', 'Cedula de extranjeria'),
    ('PA', 'Pasaporte'),
    ('TI', 'Tarjeta de identidad'),
    ('RC', 'Registro civil'),
	)
	user = models.OneToOneField(User, on_delete=models.CASCADE)
	identificacion = models.CharField(max_length=20, unique=True)
	tipo_identificacion = models.CharField(max_length=2, choices=TIPO_IDENTIFICACION)
	direccion = models.TextField()
	telefono_fijo = models.CharField(max_length=12)
	telefono_celular = models.CharField(max_length=12)
	fecha_nacimiento = models.DateField()
	edad = models.IntegerField()
	def __unicode__(self):
		return '{}'.format(self.identificacion)

class HorarioNoDisponible(models.Model):
	DIA_SEMANA = (
    ('LU', 'Lunes'),
    ('MA', 'Martes'),
    ('MI', 'Miercoles'),
    ('JU', 'Jueves'),
    ('VI', 'Viernes'),
    ('SA', 'Sabado'),
	)
	hora_inicio = models.DateField()
	hora_fin = models.DateField()
	dia_semana = models.CharField(max_length=2, choices=DIA_SEMANA)
	id_doctor = models.ForeignKey(Doctor, null=True, blank=False, on_delete=models.CASCADE)
	def __unicode__(self):
		return '{}'.format(self.dia_semana)

class Tratamiento(models.Model):
	nombre = models.CharField(max_length=100)
	descripcion = models.CharField(max_length=100)
	precio = models.IntegerField()
	def __unicode__(self):
		return '{}'.format(self.nombre)

class Especialidad(models.Model):
	nombre = models.CharField(max_length=30)
	id_tratamiento = models.ForeignKey(Tratamiento, null=True, blank=False, on_delete=models.CASCADE)
	id_doctor = models.ManyToManyField(Doctor)
	def __unicode__(self):
		return '{}'.format(self.nombre)

class Sede(models.Model):
	nombre = models.CharField(max_length=30)
	telefono = models.CharField(max_length=15)
	correo = models.EmailField()
	direccion = models.CharField(max_length=30)
	id_user = models.ManyToManyField(User)
	def __unicode__(self):
		return '{}'.format(self.sede)

class Diagnostico(models.Model):
	descripcion = models.CharField(max_length=30)
	num_diente = models.IntegerField()
	def __unicode__(self):
		return '{}'.format(self.descripcion)

class HistoriaClinica(models.Model):
	id_paciente = models.OneToOneField(Paciente, on_delete=models.CASCADE)
	def __unicode__(self):
		return '{}'.format(self.id_paciente)

class Diente(models.Model):
	CARA_DIENTE = (
    ('OC', 'Oclusal'),
    ('DI', 'Distal'),
    ('ME', 'Mesial'),
    ('LI', 'Lingual'),
    ('GI', 'Gingival'),
	)
	num_diente = models.IntegerField()
	CaraDiente1 = models.CharField(max_length=2, choices=CARA_DIENTE)
	CaraDiente2 = models.CharField(max_length=2, choices=CARA_DIENTE)
	CaraDiente3 = models.CharField(max_length=2, choices=CARA_DIENTE)
	CaraDiente4 = models.CharField(max_length=2, choices=CARA_DIENTE)
	CaraDiente5 = models.CharField(max_length=2, choices=CARA_DIENTE)
	id_tratamiento = models.ForeignKey(Tratamiento, null=True, blank=False, on_delete=models.CASCADE)
	id_diagnostico = models.ForeignKey(Diagnostico, null=True, blank=False, on_delete=models.CASCADE)
	id_HC = models.ForeignKey(HistoriaClinica, null=True, blank=False, on_delete=models.CASCADE)
	def __unicode__(self):
		return '{}'.format(self.num_diente)

class Evolucion(models.Model):
	observacion = models.TextField()
	id_diente = models.ForeignKey(Diente, null=True, blank=False, on_delete=models.CASCADE)
	id_HC = models.ForeignKey(HistoriaClinica, null=True, blank=False, on_delete=models.CASCADE)
	def __unicode__(self):
		return '{}'.format(self.observacion)

class Anamnesis(models.Model):
	motivo_consulta = models.CharField(max_length=100)
	antecedentes = models.CharField(max_length=100)
	medicamentos_en_uso = models.CharField(max_length=60)
	alergias = models.CharField(max_length=60)
	id_HC = models.OneToOneField(HistoriaClinica, on_delete=models.CASCADE)
	def __unicode__(self):
		return '{}'.format(self.motivo_consulta)

class Cita(models.Model):
	fecha = models.DateField()
	hora_inicio = models.DateTimeField()
	hora_fin = models.DateTimeField()
	actividad = models.TextField()
	observacion = models.TextField()
	id_HC = models.OneToOneField(HistoriaClinica, on_delete=models.CASCADE)
	id_doctor = models.ForeignKey(Doctor, on_delete=models.CASCADE)
	def __unicode__(self):
		return '{}'.format(self.fecha)