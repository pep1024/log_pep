\name{write_note}
\alias{write_note}
\title{
write_note
}
\description{
Add a string to the log file 
}
\usage{
write_note(note, file_name = "log.dat")
}
\arguments{
  \item{note}{
String to add to the log file
}
  \item{file_name}{
log file name and path (./log.dat)
}
}

\value{
No value
}

\author{
Pep Porra
}

\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (note, file_name = "log.dat") 
{
    t1 <- Sys.time()
    t1_format <- format(t1, "\%Y-\%m-\%d \%H:\%M:\%S")
    zz <- file(file_name, "a")
    cat(paste(t1_format, note), "\n", file = zz)
    close(zz)
  }
}
