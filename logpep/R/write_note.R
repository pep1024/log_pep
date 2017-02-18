write_note <-
function( note, file_name = "log.dat") {
    t1 <- Sys.time()
    t1_format <- format(t1, "%Y-%m-%d %H:%M:%S")
    
    zz <- file(file_name, "a")
    cat(paste(t1_format, note), "\n", file = zz)
    close(zz)
}
