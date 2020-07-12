var quests = {};

function AddDebugQuest()
{
    //Creates the variable panel
    //           (function)   (Create what,panel or label)
    //                v         v       (Parent)      (id)   
    var panel = $.CreatePanel("Panel" , $("#Quests"), "");
    panel.BLoadLayoutSnippet("Quest");
    panel.FindChildTraverse("QuestTitle").text = "The Siege of Azaroth";
    panel.FindChildTraverse("QuestDescription").text = "Siege Creeps Killed: ";
   // panel.FindChildTraverse("QuestProgress").text = "2/5";
   SetQuestProgress(panel,5,10);
} 




function SetQuestProgress(quest,current,goal)
{
    $.Msg("Current is: " + current);
    if(goal>1)
    {
        quest.FindChildTraverse("QuestProgress").text = current + "/" + goal;
    }
    else
    {
        quest.FindChildTraverse("QuestProgress").text = " ";
    }
    var percent = (current/goal);
    
    var background = quest.FindChildTraverse("Background");
    background.style.width = (percent*100 ) + "%";
    quest.goal = goal ;
    quest.current= current;
} 
function InitQuest(name, description, target)
{
    var panel = $.CreatePanel("Panel" , $("#Quests"), "");
    panel.BLoadLayoutSnippet("Quest");
    panel.FindChildTraverse("QuestTitle").text = name;
    panel.FindChildTraverse("QuestDescription").text = description;
    

    panel.name = name;
    panel.desc = description;
    SetQuestProgress(panel,0,target);
    return panel;
    
}

function RemoveQuest(quest)
{
    quest.DeleteAsync(0)
}
function debug()
{
    /*
    
    var quest1= InitQuest("Kill the Fishes", "Murlocs slain",18);
    //InitQuest("Visit Town","Visit the town of Sith", 0);
    SetQuestProgress(quest1, 15, 18);

    $.Schedule(5, function()
    { 
        RemoveQuest(quest1)
    }); 
    $.Schedule(5, function()
    { 
        RemoveQuest(quest1)
    }); 
    */

    GameEvents.Subscribe("quests_create_quest", OnNewQuest);
    GameEvents.Subscribe("quests_update_quest", OnQuestUpdateProgress);
    GameEvents.Subscribe("quests_remove_quest", OnQuestRemove);
}

/* Event listener */

function OnNewQuest(dat)
{
    var quest = InitQuest(dat.name,dat.desc,dat.max);
    quest.tag = dat.id;
    quests[dat.id] = quest;
}

function OnQuestUpdateProgress(dat)
{
    $.Msg("Hey its here");
    for(var x in quests)
    {

        quest = quests[x];
        if (quest.tag == dat.id)
        {
            SetQuestProgress(quest,dat.current,dat.max);
            break;
        }
    }
    
}

function OnQuestRemove(dat)
{
    for(var x in quests)
    {

        quest = quests[x];
        if (quest.tag == dat.id)
        {
            RemoveQuest(quest);
            break;
        }
    }
}

debug();

/* 4 WAYS OF ADDING PANELS
    1. Add using xml and css
    2. Use JS - hardcode (see below)
        panel.style.width = "100px";
        panel.style.height = "100px";
        panel.style.backgroundColor = "red";
    3. Use JS- Create here but refer to CSS Style
        panel.SetHasClass("Quest", true);
    4. Use snippets - Loads the snippets
        panel.BLoadLayoutSnippet("Quest");
    
    */