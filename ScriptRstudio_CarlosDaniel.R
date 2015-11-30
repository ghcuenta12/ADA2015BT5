#-------------------------------------------------------------------------
#                 MAESTRIA EN CIENCIAS EN INFORMATICA
#-------------------------------------------------------------------------
#     ALUMNO    : CARLOS DANIEL MARTINEZ ORTIZ
#     MATERIA   : ALMACENAMIENTO DE DATOS Y SU ADMINISTRACION
#     PROFESOR  : M.EN C. EDUARDO RENE RODRIGUEZ AVILA
#-------------------------------------------------------------------------
#     NOTA: SE OMITEN ACENTOS
#-------------------------------------------------------------------------

# Establece el directorio de trabajo
setwd("C:/ada2015cd/ADA2015BT5") 

# Lectura y carga archivo: ResultadosMelate.csv,en data.frame: MelateRes
MelateRes <- read.csv(file = "ResultadosMelate.csv")

# Muestra el nombre de las columnas del archivo
names(MelateRes)

# Muestra la estructura y los 15 primeros registros del archivo
head(MelateRes, n=15)

# Muestra el resumen de los datos estadisticos del archivo
summary(MelateRes)

# Muestra la dimension del archivo (Columnas y filas)
dim(MelateRes)

# Funcion para HISTOGRAMA de las columnas N1,N2,N3,N4,N5 y N6
hist(MelateRes$N1,xlab ="N1", main = "HISTOGRAMA DE LA COLUMNA N1")
hist(MelateRes$N1,xlab ="N2", main = "HISTOGRAMA DE LA COLUMNA N2")
hist(MelateRes$N3,xlab ="N3", main = "HISTOGRAMA DE LA COLUMNA N3")
hist(MelateRes$N4,xlab ="N4", main = "HISTOGRAMA DE LA COLUMNA N4")
hist(MelateRes$N5,xlab ="N5", main = "HISTOGRAMA DE LA COLUMNA N5")
hist(MelateRes$N6,xlab ="N6", main = "HISTOGRAMA DE LA COLUMNA N6")

# Carga libreria sqldf
library(sqldf)
# Ejecuta consulta y lo guarda en el data.frame : queryMelate
queryMelate <- sqldf('SELECT * from MelateRes WHERE FECHA > "2015/10/01" AND FECHA < "2015/10/31"')
# Visualiza el subconjunto queryMelate
data.frame(queryMelate)