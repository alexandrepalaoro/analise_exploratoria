### Código das três figuras geradas no R do post sobre análises exploratórias ###
#   Link do post: https://marcoarmello.wordpress.com/?p=15821                   #

### ---- GERANDO UMA DISTRIBUIÇÃO NORMAL ---- ####

# Nota: o png e o dev.off() são comandos para exportar a figura
# para o diretório de trabalho. Caso queiram exportar, é só tirar
# o sustenido.

#png("distrib-normal.png",res=600,w=140,h=100,units='mm')
media <- seq (0,4,0.1)
plot(media, dnorm(media,2,0.5),bty='l',xlab = "Média", ylab = "Densidade", 
     main = "Distribuição Normal",col='grey30',type='l',lwd=2)
abline(v=2,lwd=2,lty=2,col='grey')
#dev.off()


#### ---- GERANDO UMA DISTRIBUIÇÃO COM DUAS MÉDIAS ---- ####

a1<-rnorm(500,0,1)
a2<-rnorm(500,3,1)
a3<-c(a1,a2)

png("distrib-not-normal.png",res=600,w=140,h=100,units='mm')
hist(a3,main="",xlim=c(-3,7),breaks=20,ylim=c(0,120),ylab="Frequência",
     xlab="Massa (g)")
dev.off()

#### ---- GERANDO UM OUTLIER ---- ####

a1<-rnorm(15,0,1)
a2<-rnorm(15,0,1)
#png("outlier.png",res=600,w=140,h=100,units='mm')
plot(a1~a2,ylim=c(-2,10),xlab="Massa (log)", ylab="Comprimento (log)",bty='l',
     las=1,pch=21,cex=2,col='grey',bg='grey')
points(1,8,cex=2,pch=21,bg='black')
#dev.off()

