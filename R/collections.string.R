#
#
#

collections.string <-
	function(kindle_dir, 
			 lang='en-US')
	{

	hash_lst <- hash.names(kindle_dir)
	
    nms <- files <- list.kindle.docs(kindle_dir)

	for(this_file in files){
        nms[nms==this_file] <- strsplit(this_file, '/')[[1]][2]
	}

	unique_nms <- unique(nms)
	cnames  <- paste(unique_nms, '@', lang, sep='')

	M <- as.list(cnames) 
	names(M) <- cnames

	for(i in 1:length(M)){
		M[[i]] <- empty_collection <- list(items='', lastAccess=0)
	} 

	for(i in 1:length(M)){
		M[[i]]$items <- hash_lst[nms==unique_nms[i]]
	}

	J <- toJSON(M)

	ulst <- unlist( strsplit(J, 'items\":')[[1]] ) 

	for(i in 2:length(ulst)){
		u <- ulst[i]
		beg <- substr(u, 1, 1)	
		if(beg != '['){ 
        	sol <- strsplit(u, ',\"lastAccess\":0}')[[1]][1]
        	app <- strsplit(u, ',\"lastAccess\":0}')[[1]][2] 
        	ulst[i] <- paste('[', sol, '],\"lastAccess\":0}', app, sep='')
		}	
	} 

	NJ <- paste(ulst, collapse='items\":')
	
	return(NJ)
}
