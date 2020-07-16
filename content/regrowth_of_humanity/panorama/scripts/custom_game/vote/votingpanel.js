
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

}

function AddImage()
{
    $.Msg("Add Image function accessed");
}
//--------------------------- [[ BUTTONS ]] --------------------------
function ClickButtOne()
{
    $.Msg("Buttone clicked");
    
}
function ClickButtTwo()
{
    $.Msg("2nd butt clicked");
    
}
function ClickButtThree()
{ 
    $.Msg("3rd butt clicked");
}
//-------------------------------------------------------------------
///////////////////////////////////////////////////////////////////////////////
function HideVote()
{
    $.Msg("HideVote working");
   let VoteButton = $('#VPanel1');
   VoteButton.visible = false;
   
   let VoteButton2 = $('#VPanel2');
   VoteButton.visible = false;
  
   let VoteButton3 = $('#VPanel3');
   VoteButton.visible = false;

} 

function start()
{
    AddPanel();
    HideVote();
    AddImage();
}



start();