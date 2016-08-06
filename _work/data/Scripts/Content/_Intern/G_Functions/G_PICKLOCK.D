/************************************************************************* 
 * 							 G_PickLock
 *************************************************************************
 * PRCONDITIONS: 	self	: Player
 *************************************************************************/
func void G_PickLock( var int bSuccess, var int bBrokenOpen  )
{
	var string	strSoundFX;
	var string	strMessage;
	var int		strYPos;
	
	strSoundFX = _STR_INVALID;
	strMessage = _STR_INVALID;
	
	if ( bSuccess)
	{
		if ( bBrokenOpen )
		{
			strSoundFX	= _STR_SOUND_PICKLOCK_UNLOCK;
			strMessage	= _STR_MESSAGE_PICKLOCK_UNLOCK;
			strYPos		= _YPOS_MESSAGE_PICKLOCK_UNLOCK;
		}
		else
		{
			strSoundFX	= _STR_SOUND_PICKLOCK_SUCCESS;
			strMessage	= _STR_MESSAGE_PICKLOCK_SUCCESS;
			strYPos		= _YPOS_MESSAGE_PICKLOCK_SUCCESS;
		};
	}
	else
	{
		/*if ( bBrokenOpen )
		{
			strSoundFX	= _STR_SOUND_PICKLOCK_BROKEN;
			strMessage	= _STR_MESSAGE_PICKLOCK_BROKEN;
			strYPos		= _YPOS_MESSAGE_PICKLOCK_BROKEN;
		}
		else
		{
			strSoundFX	= _STR_SOUND_PICKLOCK_FAILURE;
			strMessage	= _STR_MESSAGE_PICKLOCK_FAILURE;
			strYPos		= _YPOS_MESSAGE_PICKLOCK_FAILURE;
		};*/

		if (bBrokenOpen)
		{
			Print	("Sollte hier nie ankommen!!!");
		}
		else
		{
			// Fehlschlag beim Knacken => Dietrich bricht ab und Sound oder nur Neuanfang

			if ((Npc_GetTalentSkill(hero, NPC_TALENT_PICKLOCK) == 1)
			&& (Hlp_Random(100) < 90))
			|| ((Npc_GetTalentSkill(hero, NPC_TALENT_PICKLOCK) == 2)
			&& (Hlp_Random(100) < 50))
			|| ((Npc_GetTalentSkill(hero, NPC_TALENT_PICKLOCK) == 3)
			&& (Hlp_Random(100) < 10))
			{
				strSoundFX	= _STR_SOUND_PICKLOCK_BROKEN;
				strMessage	= _STR_MESSAGE_PICKLOCK_BROKEN;
				strYPos		= _YPOS_MESSAGE_PICKLOCK_BROKEN;

				Npc_RemoveInvItems	(hero, ItKe_Lockpick, 1);

				if (Npc_HasItems(hero, ItKe_Lockpick) == 1)
				{
					AI_UseMob	(hero, "CHESTSMALL", -1);
					AI_UseMob	(hero, "CHESTBIG", -1);
					AI_UseMob	(hero, "DOOR", -1);
				};
			}
			else
			{
				strSoundFX	= _STR_SOUND_PICKLOCK_FAILURE;
				strMessage	= _STR_MESSAGE_PICKLOCK_FAILURE;
				strYPos		= _YPOS_MESSAGE_PICKLOCK_FAILURE;
			};
		};
	};
	
	//
	//	PLAY APPROPRIATE SOUND
	//
	Snd_Play3d( self, strSoundFX );
	
	//
	//	PRINT THE MESSAGE
	//
	PrintScreen	(strMessage, -1, strYPos, _STR_FONT_ONSCREEN, _TIME_MESSAGE_PICKLOCK );		
};
