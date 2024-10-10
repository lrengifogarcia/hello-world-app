# Usa una imagen base de Python
FROM python:3.8-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de requisitos
COPY requirements.txt ./

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de la aplicación
COPY . .

# Expone el puerto de la aplicación
EXPOSE 5000

# Define el comando de inicio
CMD ["python", "app.py"]
