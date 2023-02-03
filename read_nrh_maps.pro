pro read_nrh_maps, file

read_nrh, file, nrh_hdr, nrh_data

date_obs = nrh_hdr.DATE_D$OBS 
tstart = nrh_hdr.TIM_STR
tend = nrh_hdr.TIM_END
freq_str = strtrim(nrh_hdr.freq, 1)

read_nrh, file, $
		  nrh_hdr, $
		  nrh_data, $
		  hbeg=tstart, $
		  hend=tend

index2map, nrh_hdr, nrh_data, $
		   nrh_map  


date_str = time2fid(date_obs)
time_str = strjoin((tstart.split(':'))[0:2], '') + "_" + strjoin((tend.split(':'))[0:2], '')
freq_str = strmid(freq_str, 0, 3)

filename = "nrh_maps_"+ date_str + '_'+ time_str + "_" + freq_str + ".sav"
save, nrh_data, nrh_hdr, filename=filename


end