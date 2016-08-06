//-----------------CoErpresser-----------------------

instance DIA_ORG_889_CoErpresser (C_Info)
{
	npc = ORG_889_CoErpresser;
	nr = 1;
	condition = DIA_ORG_889_CoErpresser_condition;
	information = DIA_Org_889_CoErpresser_info;
	important = true;
};

func int DIA_ORG_889_CoErpresser_condition ()
{
	if ((Npc_GetAttitude(self, other)!=ATT_FRIENDLY) 
	&& 	(ORG_888_Erpresser.aivar[AIV_HAS_ERPRESSED]==FALSE) 
	&& 	(ORG_888_Erpresser.aivar[AIV_WASDEFEATEDBYSC]==FALSE)
	&&  !((hero.guild == GIL_ORG) || (hero.guild == GIL_SLD) || (hero.guild == GIL_KdW))
	&&  (ORG_826_Mordrag.aivar[AIV_PARTYMEMBER] == FALSE))
	{
		return true;
	};
};

func void DIA_ORG_889_CoErpresser_info ()
{
	AI_Output (self, other, "DIA_1061_WACHE_HALLO_01_00"); //Halt! Du kannst hier nicht vorbei!
	//AI_Output (self, other, "DIA_ORG_889_CoErpresser_npc_00"); //Hey du! Warte doch mal! Mein Kumpel hat dir etwas zu sagen...
	
	AI_GotoWP (ORG_888_Erpresser, "OW_PATH_056");
	
	AI_StopProcessInfos (self);
};



// ************************ EXIT **************************

INSTANCE Info_CoErpresser_Exit (C_INFO)
{
	npc			= Org_889_CoErpresser;
	nr			= 999;
	condition	= Info_CoErpresser_Exit_Condition;
	information	= Info_CoErpresser_Exit_Info;
	important	= 0;	
	permanent	= 1;
	description = DIALOG_ENDE;
};                       

FUNC INT Info_CoErpresser_Exit_Condition()
{
	return 1;
};

FUNC VOID Info_CoErpresser_Exit_Info()
{
	AI_StopProcessInfos	( self );
};