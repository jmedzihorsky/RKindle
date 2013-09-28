#
#
#

collections <-
	function(kindle_dir, 
			 file_name='collections', 
			 lang='en-US')
{
	NJ <- collections.string(kindle_dir=kindle_dir, lang=lang)
	new_name <- paste(kindle_dir, '/system/', file_name, '.json', sep='')
	writeLines(text=NJ, con=new_name, sep='')
}
