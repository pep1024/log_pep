## function to write in the log file the systime
## in case another time is passed, it saves also time difference
## DONE: add units to time differences 2016-09-14

write_time <- function(file_name = "log.dat", t0 = NULL) {
    t1 <- Sys.time()
    t1_format <- format(t1, "%Y-%m-%d %H:%M:%S")
    if(!is.null(t0)) {
        time_spent <- format(difftime(t1, t0, units = "auto"))
        write(paste(t1_format, time_spent), file = file_name, append = TRUE)
        return (time_spent)
    } 
    write(t1_format, file = file_name, append = TRUE)
    return (t1)
}

## function to append a note, string, to a log file
write_note <- function( note, file_name = "log.dat") {
    t1 <- Sys.time()
    t1_format <- format(t1, "%Y-%m-%d %H:%M:%S")
    
    zz <- file(file_name, "a")
    cat(paste(t1_format, note), "\n", file = zz)
    close(zz)
}