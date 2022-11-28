$(function () {
    
    var home = 100;
    var away = 100;
    var total = 245;

    function vote_home() {
        home++;
    }

    function vote_away() {
        away++;
    }

    $('.vote_home_cover').click(function() {
        vote_home();
        let hap=home+away;      
        let width_away=total*(away/hap);
        let width_home=total*(home/hap);
        $('.vote_away').width(width_away+'px');
        $('.vote_home').width(width_home+'px');

    });

    $('.vote_away_cover').click(function() {
        vote_away();
        let hap=home+away;      
        let width_away=total*(away/hap);
        let width_home=total*(home/hap);
        $('.vote_away').width(width_away+'px');
        $('.vote_home').width(width_home+'px');
    })


});