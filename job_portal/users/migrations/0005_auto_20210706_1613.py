# Generated by Django 3.1.4 on 2021-07-06 10:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0004_auto_20210701_2325'),
    ]

    operations = [
        migrations.AlterField(
            model_name='recruiter',
            name='image',
            field=models.ImageField(default='default.PNG', upload_to='profile_pics'),
        ),
    ]
