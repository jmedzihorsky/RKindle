#
#
#

list.kindle.docs <-
	function(kindle_dir)
{
	test <- length(grep('[\\]', kindle_dir))

	if(test == 0){
		aud_dir <- paste(kindle_dir, '/audible', sep='')        
		aud_lst <- paste('audible/', dir(path=aud_dir, recursive=TRUE,  all.files=FALSE), sep='')
		aud_out <- paste('audible/', dir(path=aud_dir, recursive=FALSE, all.files=FALSE), sep='')
		doc_dir <- paste(kindle_dir, '/documents', sep='')            
		doc_lst <- paste('documents/', dir(path=doc_dir, recursive=TRUE,  all.files=FALSE), sep='')
		doc_out <- paste('documents/', dir(path=doc_dir, recursive=FALSE, all.files=FALSE), sep='')
		main_lst <- c(aud_lst, doc_lst)  
		out <- c(aud_out, doc_out)
		return( main_lst[ -which(main_lst %in% out) ] )	
	} else {
		stop('Use / instead of double backlash in the directory path.')
		break()
	}

}
