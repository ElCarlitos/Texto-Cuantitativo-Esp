##########Carlos Cortes#######33


###########Analisis##########33
require(cuanteda)
require(tm)
###############################3

text <-read.csv("majo.csv", sep=";",stringsAsFactors = FALSE)
majo<-(corpus(text, textField = "Título", source = "From a data.frame called text"))
majodfm <- dfm(majo, ignoredFeatures = stopwords("spanish"))

tipomajoDfm <- dfm(majo, groups = "Tipo", ignoredFeatures = stopwords("spanish"), stem=TRUE)
mediomajodfm<- dfm(majo, groups = "Medio", ignoredFeatures = stopwords("spanish"), stem=TRUE)

sort(mediomajodfm)[, 1:10]
sort(tipomajoDfm)[, 1:10]

plot(majodfm)

if (require(RColorBrewer))
  plot(majodfm, max.words = 100, colors = brewer.pal(6, "Dark2"), scale = c(8, .5))

topfeatures(majodfm)
(presCTTR <- lexdiv(majodfm, "CTTR"))
dotchart(presCTTR, pch = 16, xlab = "CTTR Lexical Diversity")


majodfb<-ignoredFeatures=

lucho  
  
#########################3

kwic(majo,"Sierra")
