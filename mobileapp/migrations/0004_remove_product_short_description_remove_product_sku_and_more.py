# Generated by Django 4.0.3 on 2022-04-25 14:06

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mobileapp', '0003_remove_order_status'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='product',
            name='short_description',
        ),
        migrations.RemoveField(
            model_name='product',
            name='sku',
        ),
        migrations.DeleteModel(
            name='Order',
        ),
    ]
