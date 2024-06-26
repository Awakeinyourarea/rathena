// Copyright (c) rAthena Dev Teams - Licensed under GNU GPL
// For more information, see LICENCE in the main folder

/**
 * Custom Atcommands
 * Place the body of custom atcommands in this file.
 * Format:
 *	ACMD_FUNC(command_name)
 *	{
 *		<code>;
 *	}
 **/

//ACMD_FUNC(newcommand)
//{
//	clif_displaymessage(fd, "It works!");
//	clif_specialeffect(&sd->bl, EF_HEARTCASTING, AREA);
//	return 0;
//}

/*==========================================
 Hideview Modify by [Millornine] v 1.0.2
 *------------------------------------------*/
ACMD_FUNC(hideview)
{
	int val = 0;
	
	nullpo_retr(-1, sd);
	memset(atcmd_output, '\0', sizeof(atcmd_output));
	
	parent_cmd = atcommand_alias_db.checkAlias(command+1);
	
	if( strcmp(parent_cmd, "hideview") == 0 ){
		val += 16;
		
		sd->state.hideview = val;
		clif_refresh(sd);
		if(sd->state.hideview&16){
			clif_refreshlook(&sd->bl,sd->bl.id,LOOK_HEAD_TOP,0,SELF);
			clif_refreshlook(&sd->bl,sd->bl.id,LOOK_HEAD_MID,0,SELF);
			clif_refreshlook(&sd->bl,sd->bl.id,LOOK_HEAD_BOTTOM,0,SELF);
			clif_refreshlook(&sd->bl,sd->bl.id,LOOK_ROBE,0,SELF);
		}
		sprintf(atcmd_output, "players equip view are now hidden");
		clif_displaymessage(fd, atcmd_output);
		clif_displaymessage(fd, "Use @showview to show all players equipment view");
	} else if(strcmp(parent_cmd, "showview") == 0){
		sd->state.hideview = 0;
		clif_displaymessage(fd, "All players view are now show.");
		clif_refresh(sd);
		clif_refreshlook(&sd->bl,sd->bl.id,LOOK_HEAD_TOP,sd->status.head_top,SELF);
		clif_refreshlook(&sd->bl,sd->bl.id,LOOK_HEAD_MID,sd->status.head_mid,SELF);
		clif_refreshlook(&sd->bl,sd->bl.id,LOOK_HEAD_BOTTOM,sd->status.head_bottom,SELF);
		clif_refreshlook(&sd->bl,sd->bl.id,LOOK_ROBE,sd->status.robe,SELF);
	}
	map_foreachinallrange(clif_hideview, &sd->bl, AREA_SIZE, BL_PC, &sd->bl);
	return 0;
}
