


//////////////////////////// PICKING PANELS ////////////////////////////////

function AddPanel()
{
    //Create the picking Panel
    $.Msg("AddPanel Function accessed ======");
    let panel = $.CreatePanel("Panel", $("#mainpanel"), "");
    panel.BLoadLayoutSnippet("PickPanel");
    
} 

function GameSwitch()
{
    //Function that will change the picture of game
    let gamename = "overcooked";
    let imglink = "file://{images}/custom_game/gamethumbnail/game_" + gamename + ".png" ;
    $('#GameOneImgSrc').SetImage(imglink);
    $.Msg(imglink);
}
 

//--------------------------- [[ BUTTONS ]] --------------------------
function ClickButtOne()
{
    $.Msg("Buttone clicked");
    
}
function ClickButtTwo()
{
    $.Msg("2nd butt clicked");
    $.Msg( CustomNetTables.GetAllTableValues( "minigame" ) );
}
function ClickButtThree()
{ 
    $.Msg("3rd butt clicked");
    GameSwitch();

}
//-------------------------------------------------------------------
///////////////////////////////////////////////////////////////////////////////
function HideVote()
{
    //Hide the vote button
    $.Msg("HideVote working");
   let VoteButton = $('#VPanel1');
   //oteButton.visible = false;
   
   let VoteButton2 = $('#VPanel2');
   //VoteButton2.visible = false;

} 

function start()
{
    AddPanel();
    HideVote();
    
}



start();