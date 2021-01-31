# Generated by Django 3.1.5 on 2021-01-30 09:57

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Sales', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customuser',
            name='first_name',
            field=models.CharField(blank=True, max_length=150, verbose_name='first name'),
        ),
        migrations.CreateModel(
            name='Shop',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('shop_name', models.CharField(default='', max_length=200)),
                ('contact', models.CharField(default='', max_length=200)),
                ('location', models.CharField(default='', max_length=200)),
                ('category', models.CharField(default='', max_length=200)),
                ('contact_person', models.CharField(default='', max_length=200)),
                ('branded', models.CharField(default='', max_length=200)),
                ('email', models.CharField(default='', max_length=200)),
                ('password', models.CharField(default='', max_length=200)),
                ('password2', models.CharField(default='', max_length=200)),
                ('CustomUser', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]