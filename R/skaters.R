#' NHL Skater Statistics 2007-2019
#'
#' A dataset containing season-level statistics for NHL players for all
#' game states (5v5, PP, PK). Includes regular season and playoffs.
#'
#' @docType data
#'
#' @usage data(skaters)
#'
#' @format A data frame with 9402 rows and 48 variables:
#' \describe{
#'   \item{player}{Player name}
#'   \item{season}{Season}
#'   \item{team}{First team player played for in a given season}
#'   \item{team2}{Second team player played for in a given season}
#'   \item{team3}{Third team player played for in a given season}
#'   \item{position}{Player's first position}
#'   \item{position2}{Player's second position}
#'   \item{position3}{Player's third position}
#'   \item{gp}{Games Played}
#'   \item{toi}{Time on the ice}
#'   \item{g}{Goals scored}
#'   \item{a}{Assists}
#'   \item{p}{Points}
#'   \item{p1}{Primary points (goals + primary assists)}
#'   \item{p_60}{Points per 60 minutes on the ice}
#'   \item{p1_60}{Primary points per 60 minutes on the ice}
#'   \item{gs}{Game score}
#'   \item{gs_60}{Game score per 60 minutes on the ice}
#'   \item{cf}{Corsi for (shot attempts by player's team while player is on the ice)}
#'   \item{ca}{Corsi against (shot attempts by opposing team will player is on the ice)}
#'   \item{c_plumin}{Corsi plus/minus (cf-ca)}
#'   \item{cf_pct}{Corsi percentage}
#'   \item{rel_cf_pct}{Relative corsi percentage}
#'   \item{gf}{Goals scored for a player's team}
#'   \item{ga}{Goals scored against player's team}
#'   \item{g_plumin}{Goals for - goals against}
#'   \item{gf_pct}{Percentage of all goals scored by player's team}
#'   \item{rel_gf_pct}{Relative goals for percentage}
#'   \item{xgf}{Expected goals for}
#'   \item{xga}{Expected goals against}
#'   \item{xg_plumin}{Expected goals for - expected goals against}
#'   \item{xgf_pct}{Expected goals for as a percentage of a team's total expected goals for}
#'   \item{rel_xgf_pct}{Relative expected goals for as a percentage of a team's total expected goals for}
#'   \item{ipent}{Individual penalties taken}
#'   \item{ipend}{Individual penalties drawn}
#'   \item{ip_plumin}{Individual penalties taken - indiviual penalties drawn}
#'   \item{icf}{Individual corsi for}
#'   \item{icf_60}{Individual corsi for per 60 minutes on the ice}
#'   \item{ixgf}{Individual expected goals for}
#'   \item{ixgf_60}{Individual expected goals for per 60 minutes on the ice}
#'   \item{ish_pct}{Individual shooting percentage}
#'   \item{pdo}{Just Win Baby}
#'   \item{zsr}{Zone start ratio}
#'   \item{toi_pct}{Percentage of team's total time on ice played by player}
#'   \item{toi_pct_qot}{Percentage of team's total time on ice played by player, weighted by quality of teammates}
#'   \item{cf_pct_qot}{Corsi for percentage weighted by quality of player's teammates}
#'   \item{toi_pct_qoc}{Percentage of team's total time on ice played by player, weighted by quality of opponents}
#'   \item{cf_pct_qoc}{Corsi for percentage weighted by quality of player's opponents}
#' }
#' 
#' @keywords datasets
#' 
#' @source \url{http://corsica.hockey/skater-stats/}
"skaters"