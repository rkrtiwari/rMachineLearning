jpeg("figures/bootstrap.jpg")
pch <- c(15,16,17,18,8)
col <- c("red", "green", "blue", "magenta", "black")
y <- rep(1,5)
set.seed(1)
in1 <- sample(1:5, size = 5, replace= TRUE)
set.seed(3)
in2 <- sample(1:5, size = 5, replace= TRUE)
set.seed(10)
in3 <- sample(1:5, size = 5, replace= TRUE)

plot(1, type="n", axes=F, xlab="", ylab="", ylim = c(12,0), xlim = c(-1.6,5),
     main = "Bootstrap Sampling Illustration")
points(y, pch = pch, col = col, cex = 3)
points(y+4, pch = pch[in1], col = col[in1], cex = 3)
points(y+7, pch = pch[in2], col = col[in2], cex = 3)
points(y+10, pch = pch[in3], col = col[in3], cex = 3)
text(-1,1, labels = "Observation")
text(-1,5, labels = "Sample 1")
text(-1,8, labels = "Sample 2")
text(-1,11, labels="Sample 3")
dev.off()