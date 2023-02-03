pro read_nrh_maps

root_dir ="/Users/laura.hayes/lofar_stix/nrh_data/"
cd, folder
files = findfile("*nrh*.fts")

read_nrh, files[0], nrh_hdr, nrh_data


tstart = nrh_hdr.TIM_STR
tend = nrh_hdr.TIM_END

read_nrh, files[0], $
		  nrh_hdr, $
		  nrh_data, $
		  hbeg=tstart, $
		  hend=tend

index2map, nrh_hdr, nrh_data, $
		   nrh_map  

nrh_str_hdr = nrh_hdr
nrh_times = nrh_hdr.date_obs


end