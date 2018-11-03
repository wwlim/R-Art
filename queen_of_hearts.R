# Heart shaped to one's content
# Goal: Build code to draw a heart shape according to one's wishes :)
# Basic plot adapted from: https://stackoverflow.com/questions/8082429/plot-a-heart-in-r by commenter 42-

# Blank plot
plot.new()

# Set up t values
dat <- data.frame(t=seq(0, 2*pi, by=0.1)) 

# Function to generate X and Y values to draw a heart
xhrt <- function(t) 16*sin(t)^3
yhrt <- function(t) 13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t)

# Calculate X and Y for each t
dat$y=yhrt(dat$t)
dat$x=xhrt(dat$t)

with(dat, plot(x,y, type="l", col="white", axes=F, xlab=NA, ylab=NA))
with(dat, polygon(x,y, border="white", col="hotpink"))   

# Script end #