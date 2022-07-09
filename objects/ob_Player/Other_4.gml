/// @description AUTO SAVE

//overwrite old save

if(file_exists(SAVEFILE))  file_delete(SAVEFILE);

//cerate new save
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file,room);
file_text_write_real(file,global.kills);
file_text_write_real(file,global.bigkills);
file_text_write_real(file,global.hasgun);
file_text_close(file);

