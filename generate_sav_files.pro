pro generate_sav_files

root_dir ="/Users/laura.hayes/lofar_stix/nrh_data/"
cd, root_dir
files = findfile("*nrh*.fts")

for i=0, n_elements(files):
	read_nrh_maps, files[i]

end