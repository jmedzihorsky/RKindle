#
#
#

hash.names <-
	function(kindle_dir){
	
	files <- list.kindle.docs(kindle_dir)

	azws <- grep(pattern='.azw', x=files, invert=FALSE)
	oths <- grep(pattern='.azw', x=files, invert=TRUE )
	
	azw_names <- files[azws]
	oth_names <- files[oths]
	
    hash_azws <- character(0)
    for(azw in azw_names){
        azw <- strsplit(azw, '/')
        azw <- azw[[1]][length(azw[[1]])]
        nme <- strsplit(azw, 'asin_' )[[1]][2]
       	nme <- strsplit(nme, '-type_')[[1]][1]   
        tpe <- strsplit(azw, '-type_')[[1]][2]
        tpe <- strsplit(tpe, '-v'    )[[1]][1]
        fle <- paste('#', nme, '^', tpe, sep='')
        hash_azws <- c(hash_azws, fle)
	}

    hash_oths <- character()
    for(fle in oth_names){
        fle <- paste('/mnt/us/', fle, sep='')
        fle <- digest(fle, algo='sha1', serialize=FALSE)
        fle <- paste('*', fle, sep='')
        hash_oths <- c(hash_oths, fle)
	}

	hash_lst <- character(length(files))
	hash_lst[azws] <- hash_azws
	hash_lst[oths] <- hash_oths
	return(hash_lst)
}
