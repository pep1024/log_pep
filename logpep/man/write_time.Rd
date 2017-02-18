\name{write_time}
\alias{write_time}
\title{
write_time}
\description{
writes a timestamp (yyyy-mm-dd hh:mm:ss) to a log file. If a timestamp is passed, it returns the difference with the time of the call
}
\usage{
write_time(file_name = "log.dat", t0 = NULL)
}

\arguments{
  \item{file_name}{
file name (by default (./log.dat))
}
  \item{t0}{
timestamp to compute the difference with the timestamp of the call to the function
}
}

\value{
timestamp (yyyy-mm-dd hh:mm:ss)
If t0, time difference
}
\author{
Pep Porra}

\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (file_name = "log.dat", t0 = NULL) 
{
    t1 <- Sys.time()
    t1_format <- format(t1, "\%Y-\%m-\%d \%H:\%M:\%S")
    if (!is.null(t0)) {
        time_spent <- format(difftime(t1, t0, units = "auto"))
        write(paste(t1_format, time_spent), file = file_name, 
            append = TRUE)
        return(time_spent)
    }
    write(t1_format, file = file_name, append = TRUE)
    return(t1)
  }
}
