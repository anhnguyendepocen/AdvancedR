pkgname <- "ProtExp"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('ProtExp')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("is_log_trans")
### * is_log_trans

flush(stderr()); flush(stdout())

### Name: is_log_trans
### Title: Is a dataset log-transformed?
### Aliases: is_log_trans is_log_trans<- is_log_trans.default
###   is_log_trans<-.default

### ** Examples

x <- structure("test", is_log_trans = TRUE)
is_log_trans(x)
is_log_trans(x) <- FALSE
is_log_trans(x)




cleanEx()
nameEx("twin")
### * twin

flush(stderr()); flush(stdout())

### Name: twin
### Title: Twin DIA and SRM experiments
### Aliases: twin

### ** Examples

data(twin)
head(twin_dia)
head(twin_srm)



### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
