#' competitions method
#'
#' @description competitions (ie. World Cup 2014) associated with the markets
#' selected by the \code{filter} parameter.
#'
#' @name competitions
#'
#' @param filter list to select desired markets, see \link{marketFilter}, or marketFilter section below,
#' or visit \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Type+Definitions#BettingTypeDefinitions-MarketFilter}{developer.betfair.com},
#' for the different options.
#'
#' @section marketFilter:
#' Paramaters that can be included in the \code{filter} list
#' \itemize{
#'      \item \strong{bspOnly} \code{(boolean)} Restrict to BSP (Betfair Starting Price)
#'      markets only, TRUE, or non-BSP markets, FALSE. If not specified then returns
#'      both BSP and non-BSP markets.
#'      \item \strong{competitionIds} \code{(string)} Restrict markets by the competitions
#'      associated with the market.
#'      \item \strong{eventIds} \code{(string)} Restrict markets by the event Id
#'      associated with the market.
#'      \item \strong{eventTypeIds} \code{(string)} Restrict markets by event type
#'      associated with the market, ie. Football, Hockey, etc.
#'      \item \strong{exchangeIds} \code{(string)} Restrict markets by the Exchange
#'      where the market operates. As of Jun 11, 2015, \strong{not available}.
#'      \item \strong{inPlayOnly} \code{boolean} Restrict to markets that are
#'      currently in play, TRUE, or not currently in play, FALSE. If not specified
#'      returns both.
#'      \item \strong{marketBettingTypes} see section \strong{MarketBettingType} in
#'      \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#MarketBettingType}{developer.betfair.com} Restrict to markets that match the betting type of the
#'      market, ie. Odds, Asian Handicap Singles, Asian Handicap Doubles.
#'      \item \strong{marketCountries} \code{string} Restrict to markets that are in the
#'      specified country or countries.
#'      \item \strong{marketIds} \code{string} Restrict markets by the market Id
#'      associated with the market.
#'      \item \strong{marketStartTime} see section \strong{TimeRange} Restrict markets
#'      with a market start time before or after the specified date.
#'      \item \strong{marketTypeCodes} \code{string} Restrict to markets that match
#'      the type of the market, ie. MATCH_ODDS, HALF_TIME_SCORE. You should use this
#'      instead of relying on the market name as the market type codes are the same
#'      in all locales.
#'      \item \strong{textQuery} \code{string} Restrict markets by any text associated
#'      with the market such as Name, Event, Competition, etc. You can include a wildcard
#'      (*) character, as long as it is not the first character.
#'      \item \strong{turnInPlayEnabled} \code{boolean} Restrict to markets that will
#'      turn in play, TRUE, or will not turn in play, FALSE. If not specified returns
#'      both.
#'      \item \strong{venues} \code{string} Restrict markets by the venue associated
#'      with the market. Currently, as of Jun 11, 2015, only Horse Racing markets
#'      have venues.
#'      \item \strong{withOrders} see section \strong{OrderStatus} in \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#OrderStatus}{developer.betfair.com}
#'      Restrict to markets that I have one or more orders in these status.
#' }
#'
#' @section TimeRange:
#' \itemize{
#'      \item \strong{from} \code{date} From date.
#'      \item \strong{to} \code{date} To date
#' }
#'
#' @return a dataframe of competitions (ie. World Cup 2014) associated with the
#' markets selected by the \code{filter} parameter, with the following variables:
#' \itemize{
#'      \item{\code{competition_id} competition id}
#'      \item{\code{competition_name} competition name}
#'      \item{\code{marketCount} number of markets associated with this competition}
#'      \item{\code{competitionRegion} region in which this competition is happening}
#' }
#'
#' @examples
#' \dontrun{
#'
#' # after logging in
#' bf <- betfair(usr = "username", pwd = "password", key = "API_key)
#'
#' # return all competitions
#' bf$competitions()
#'
#' # filter just football competitions
#' bf$competitions(filter = list("eventTypeIds" = 1))
#'
#' # or
#' bf$competitions(filter = marketFilter(eventTypeIds = 1))
#' }
NULL

#' countries method
#'
#' @description countries associated with markets
#'
#' @name countries
#'
#' @param filter list to select desired markets, see \link{marketFilter}, or marketFilter section below,
#' or visit \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Type+Definitions#BettingTypeDefinitions-MarketFilter}{developer.betfair.com},
#' for the different options.
#'
#' @section marketFilter:
#' Paramaters that can be included in the \code{filter} list
#' \itemize{
#'      \item \strong{bspOnly} \code{(boolean)} Restrict to BSP (Betfair Starting Price)
#'      markets only, TRUE, or non-BSP markets, FALSE. If not specified then returns
#'      both BSP and non-BSP markets.
#'      \item \strong{competitionIds} \code{(string)} Restrict markets by the competitions
#'      associated with the market.
#'      \item \strong{eventIds} \code{(string)} Restrict markets by the event Id
#'      associated with the market.
#'      \item \strong{eventTypeIds} \code{(string)} Restrict markets by event type
#'      associated with the market, ie. Football, Hockey, etc.
#'      \item \strong{exchangeIds} \code{(string)} Restrict markets by the Exchange
#'      where the market operates. As of Jun 11, 2015, \strong{not available}.
#'      \item \strong{inPlayOnly} \code{boolean} Restrict to markets that are
#'      currently in play, TRUE, or not currently in play, FALSE. If not specified
#'      returns both.
#'      \item \strong{marketBettingTypes} see section \strong{MarketBettingType} in
#'      \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#MarketBettingType}{developer.betfair.com}
#'      Restrict to markets that match the betting type of the market, ie. Odds,
#'      Asian Handicap Singles, Asian Handicap Doubles.
#'      \item \strong{marketCountries} \code{string} Restrict to markets that are in the
#'      specified country or countries.
#'      \item \strong{marketIds} \code{string} Restrict markets by the market Id
#'      associated with the market.
#'      \item \strong{marketStartTime} see section \strong{TimeRange} Restrict markets
#'      with a market start time before or after the specified date.
#'      \item \strong{marketTypeCodes} \code{string} Restrict to markets that match
#'      the type of the market, ie. MATCH_ODDS, HALF_TIME_SCORE. You should use this
#'      instead of relying on the market name as the market type codes are the same
#'      in all locales.
#'      \item \strong{textQuery} \code{string} Restrict markets by any text associated
#'      with the market such as Name, Event, Competition, etc. You can include a wildcard
#'      (*) character, as long as it is not the first character.
#'      \item \strong{turnInPlayEnabled} \code{boolean} Restrict to markets that will
#'      turn in play, TRUE, or will not turn in play, FALSE. If not specified returns
#'      both.
#'      \item \strong{venues} \code{string} Restrict markets by the venue associated
#'      with the market. Currently, as of Jun 11, 2015, only Horse Racing markets
#'      have venues.
#'      \item \strong{withOrders} see section \strong{OrderStatus} in \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#OrderStatus}{developer.betfair.com}
#'      Restrict to markets that I have one or more orders in these status.
#' }
#'
#' @section TimeRange:
#' \itemize{
#'      \item \strong{from} \code{date} From date.
#'      \item \strong{to} \code{date} To date
#' }
#'
#' @return a dataframe of countries with markets selected by the \code{filter}
#' parameter, with the following variables:
#' \itemize{
#'      \item{\code{countryCode} the ISO-2 code for the event, ISO-2 codes are
#'      available on \href{https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2}{wiki}}
#'      \item{\code{marketCount} number of markets associated with this competition}
#' }
NULL

#' eventTypes method
#'
#' @description event types associated with markets
#'
#' @name eventTypes
#'
#' @param filter list to select desired markets, see \link{marketFilter}, or marketFilter section below,
#' or visit \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Type+Definitions#BettingTypeDefinitions-MarketFilter}{developer.betfair.com},
#' for the different options.
#'
#' @section marketFilter:
#' Paramaters that can be included in the \code{filter} list
#' \itemize{
#'      \item \strong{bspOnly} \code{(boolean)} Restrict to BSP (Betfair Starting Price)
#'      markets only, TRUE, or non-BSP markets, FALSE. If not specified then returns
#'      both BSP and non-BSP markets.
#'      \item \strong{competitionIds} \code{(string)} Restrict markets by the competitions
#'      associated with the market.
#'      \item \strong{eventIds} \code{(string)} Restrict markets by the event Id
#'      associated with the market.
#'      \item \strong{eventTypeIds} \code{(string)} Restrict markets by event type
#'      associated with the market, ie. Football, Hockey, etc.
#'      \item \strong{exchangeIds} \code{(string)} Restrict markets by the Exchange
#'      where the market operates. As of Jun 11, 2015, \strong{not available}.
#'      \item \strong{inPlayOnly} \code{boolean} Restrict to markets that are
#'      currently in play, TRUE, or not currently in play, FALSE. If not specified
#'      returns both.
#'      \item \strong{marketBettingTypes} see section \strong{MarketBettingType} in
#'      \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#MarketBettingType}{developer.betfair.com}
#'      Restrict to markets that match the betting type of the market, ie. Odds,
#'      Asian Handicap Singles, Asian Handicap Doubles.
#'      \item \strong{marketCountries} \code{string} Restrict to markets that are in the
#'      specified country or countries.
#'      \item \strong{marketIds} \code{string} Restrict markets by the market Id
#'      associated with the market.
#'      \item \strong{marketStartTime} see section \strong{TimeRange} Restrict markets
#'      with a market start time before or after the specified date.
#'      \item \strong{marketTypeCodes} \code{string} Restrict to markets that match
#'      the type of the market, ie. MATCH_ODDS, HALF_TIME_SCORE. You should use this
#'      instead of relying on the market name as the market type codes are the same
#'      in all locales.
#'      \item \strong{textQuery} \code{string} Restrict markets by any text associated
#'      with the market such as Name, Event, Competition, etc. You can include a wildcard
#'      (*) character, as long as it is not the first character.
#'      \item \strong{turnInPlayEnabled} \code{boolean} Restrict to markets that will
#'      turn in play, TRUE, or will not turn in play, FALSE. If not specified returns
#'      both.
#'      \item \strong{venues} \code{string} Restrict markets by the venue associated
#'      with the market. Currently, as of Jun 11, 2015, only Horse Racing markets
#'      have venues.
#'      \item \strong{withOrders} see section \strong{OrderStatus} in
#'      \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#OrderStatus}{developer.betfair.com}
#'      Restrict to markets that I have one or more orders in these status.
#' }
#'
#' @section TimeRange:
#' \itemize{
#'      \item \strong{from} \code{date} From date.
#'      \item \strong{to} \code{date} To date
#' }
#'
#' @return a dataframe of event types associated with markets selected by the
#' \code{filter} parameter, with the following variables:
#' \itemize{
#'      \item{\code{eventType_id} eventType id}
#'      \item{\code{eventType_name} eventType name}
#'      \item{\code{marketCount} number of markets associated with this competition}
#' }
NULL

#' events method
#'
#' @description events associated with markets
#'
#' @name events
#'
#' @param filter list to select desired markets, see \link{marketFilter}, or marketFilter section below,
#' or visit \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Type+Definitions#BettingTypeDefinitions-MarketFilter}{developer.betfair.com},
#' for the different options.
#'
#' @section marketFilter:
#' Paramaters that can be included in the \code{filter} list
#' \itemize{
#'      \item \strong{bspOnly} \code{(boolean)} Restrict to BSP (Betfair Starting Price)
#'      markets only, TRUE, or non-BSP markets, FALSE. If not specified then returns
#'      both BSP and non-BSP markets.
#'      \item \strong{competitionIds} \code{(string)} Restrict markets by the competitions
#'      associated with the market.
#'      \item \strong{eventIds} \code{(string)} Restrict markets by the event Id
#'      associated with the market.
#'      \item \strong{eventTypeIds} \code{(string)} Restrict markets by event type
#'      associated with the market, ie. Football, Hockey, etc.
#'      \item \strong{exchangeIds} \code{(string)} Restrict markets by the Exchange
#'      where the market operates. As of Jun 11, 2015, \strong{not available}.
#'      \item \strong{inPlayOnly} \code{boolean} Restrict to markets that are
#'      currently in play, TRUE, or not currently in play, FALSE. If not specified
#'      returns both.
#'      \item \strong{marketBettingTypes} see section \strong{MarketBettingType} in
#'      \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#MarketBettingType}{developer.betfair.com}
#'      Restrict to markets that match the betting type of the market, ie. Odds,
#'      Asian Handicap Singles, Asian Handicap Doubles.
#'      \item \strong{marketCountries} \code{string} Restrict to markets that are in the
#'      specified country or countries.
#'      \item \strong{marketIds} \code{string} Restrict markets by the market Id
#'      associated with the market.
#'      \item \strong{marketStartTime} see section \strong{TimeRange} Restrict markets
#'      with a market start time before or after the specified date.
#'      \item \strong{marketTypeCodes} \code{string} Restrict to markets that match
#'      the type of the market, ie. MATCH_ODDS, HALF_TIME_SCORE. You should use this
#'      instead of relying on the market name as the market type codes are the same
#'      in all locales.
#'      \item \strong{textQuery} \code{string} Restrict markets by any text associated
#'      with the market such as Name, Event, Competition, etc. You can include a wildcard
#'      (*) character, as long as it is not the first character.
#'      \item \strong{turnInPlayEnabled} \code{boolean} Restrict to markets that will
#'      turn in play, TRUE, or will not turn in play, FALSE. If not specified returns
#'      both.
#'      \item \strong{venues} \code{string} Restrict markets by the venue associated
#'      with the market. Currently, as of Jun 11, 2015, only Horse Racing markets
#'      have venues.
#'      \item \strong{withOrders} see section \strong{OrderStatus} in
#'      \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#OrderStatus}{developer.betfair.com}
#'      Restrict to markets that I have one or more orders in these status.
#' }
#'
#' @section TimeRange:
#' \itemize{
#'      \item \strong{from} \code{date} From date.
#'      \item \strong{to} \code{date} To date
#' }
#'
#' @return a dataframe of events (ie. Manchester United vs Arsenal) associated
#' with markets selected by the \code{filter} parameter, with the following variables:
#' \itemize{
#'      \item{\code{event_id} event id}
#'      \item{\code{event_name} event name}
#'      \item{\code{event_countryCode} ISO-2 country code for the event}
#'      \item{\code{event_timezone} the timezone in which the event is taking place}
#'      \item{\code{event_venue} the event venue (if applicable)}
#'      \item{\code{event_openDate} the scheduled start Date of rhe event}
#'      \item{\code{marketCount} number of markets associated with this competition}
#' }
#'
#' @examples
#' \dontrun{
#'
#' # login
#' bf <- betfair(usr = "username", pwd = "password", key = "API_key")
#'
#' # return all events, probably best to store as dataframe, likely exceed 1000 rows
#' events_df <- bf$events()
#'
#' # return football events
#' # using eventType id learned by using bf$eventTypes()
#' football <- bf$events(filter = marketFilter(eventTypeIds = 1))
#' }
NULL

#' marketBook method
#'
#' @description dynamic data about markets. Data includes prices, the status of the
#' market, the status of selections, the traded volume, and the status of any orders
#' you have placed in the market.
#'
#' @name marketBook
#'
#' @param marketIds (string) one or more market Ids. The number of markets returned
#' depends on the amount of data you request via the price projection.
#' @param priceProjection the projection of price data you want to receive in the
#' response, see section
#' \strong{PriceProjection} for details.
#' @param orderProjection the orders you want to receive in the response, see
#' section \strong{OrderProjection} in \link{BettingEnums}.
#' @param matchProjection if you ask for orders, specifies the representation of
#' matches, see section \strong{MatchProjection} in \link{BettingEnums}.
#'
#' @details  Seperate requests should be made for ACTIVE and CLOSED markets.
#' Requests that include both ACTIVE and CLOSED markets will only return those
#' markets that are active.
#'
#' Data request limits apply to requests using \code{marketBook} that include price
#' or order projections. Calls to \code{marketBook} should be made up to a maximum of
#' 5 times per second to a single marketId.
#'
#' \strong{BEST PRACTICE}: those seeking to use \code{marketBook} to obtain price,
#' volume, unmatched orders and matched position in a single operation should
#' provide and \code{orderProjection} of \strong{EXECUTABLE} in their \code{marketBook}
#' request and receive all unmatched orders and the aggregated matched volume from
#' all orders.  The level of matched volume aggregation (\code{matchProjection})
#' should be \strong{ROLLED_UP_BY_AVG_PRICE} or \strong{ROLLED_UP_BY_PRICE}, the
#' former being preferred. This provides a single call in which you can track prices,
#' traded volume, unmatched orders, and your evolving matched position with a reasonably
#' fixed, minimally sized response.
NULL

#' marketTypes method
#'
#' @description marketTypes associated with markets
#'
#' @name marketTypes
#'
#' @param filter list to select desired markets, see \link{marketFilter}, or marketFilter section below,
#' or visit \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Type+Definitions#BettingTypeDefinitions-MarketFilter}{developer.betfair.com},
#' for the different options.
#'
#' @section marketFilter:
#' Paramaters that can be included in the \code{filter} list
#' \itemize{
#'      \item \strong{bspOnly} \code{(boolean)} Restrict to BSP (Betfair Starting Price)
#'      markets only, TRUE, or non-BSP markets, FALSE. If not specified then returns
#'      both BSP and non-BSP markets.
#'      \item \strong{competitionIds} \code{(string)} Restrict markets by the competitions
#'      associated with the market.
#'      \item \strong{eventIds} \code{(string)} Restrict markets by the event Id
#'      associated with the market.
#'      \item \strong{eventTypeIds} \code{(string)} Restrict markets by event type
#'      associated with the market, ie. Football, Hockey, etc.
#'      \item \strong{exchangeIds} \code{(string)} Restrict markets by the Exchange
#'      where the market operates. As of Jun 11, 2015, \strong{not available}.
#'      \item \strong{inPlayOnly} \code{boolean} Restrict to markets that are
#'      currently in play, TRUE, or not currently in play, FALSE. If not specified
#'      returns both.
#'      \item \strong{marketBettingTypes} see section \strong{MarketBettingType} in
#'      \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#MarketBettingType}{developer.betfair.com}
#'      Restrict to markets that match the betting type of the market, ie. Odds,
#'      Asian Handicap Singles, Asian Handicap Doubles.
#'      \item \strong{marketCountries} \code{string} Restrict to markets that are in the
#'      specified country or countries.
#'      \item \strong{marketIds} \code{string} Restrict markets by the market Id
#'      associated with the market.
#'      \item \strong{marketStartTime} see section \strong{TimeRange} Restrict markets
#'      with a market start time before or after the specified date.
#'      \item \strong{marketTypeCodes} \code{string} Restrict to markets that match
#'      the type of the market, ie. MATCH_ODDS, HALF_TIME_SCORE. You should use this
#'      instead of relying on the market name as the market type codes are the same
#'      in all locales.
#'      \item \strong{textQuery} \code{string} Restrict markets by any text associated
#'      with the market such as Name, Event, Competition, etc. You can include a wildcard
#'      (*) character, as long as it is not the first character.
#'      \item \strong{turnInPlayEnabled} \code{boolean} Restrict to markets that will
#'      turn in play, TRUE, or will not turn in play, FALSE. If not specified returns
#'      both.
#'      \item \strong{venues} \code{string} Restrict markets by the venue associated
#'      with the market. Currently, as of Jun 11, 2015, only Horse Racing markets
#'      have venues.
#'      \item \strong{withOrders} see section \strong{OrderStatus} in
#'      \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#OrderStatus}{developer.betfair.com}
#'      Restrict to markets that I have one or more orders in these status.
#' }
#'
#' @section TimeRange:
#' \itemize{
#'      \item \strong{from} \code{date} From date.
#'      \item \strong{to} \code{date} To date
#' }
#'
#' @return a dataframe of market types (ie. MATCH_ODDS, NEXT_GOAL) associated
#' with markets selected by the \code{filter} parameter, with the following variables:
#' \itemize{
#'      \item{\code{marketType} the market type}
#'      \item{\code{marketCount} number of markets associated with this competition}
#' }
NULL

#' marketCatalogue method
#'
#' @description marketCatalogue associated with markets, you use \code{marketCatalogue}
#' to retrieve the id of a market, the names of selections and other information about
#' the market
#'
#' @name marketCatalogue
#'
#' @param filter list to select desired markets, see \strong{marketFilter} section below
#' or visit \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Type+Definitions#BettingTypeDefinitions-MarketFilter}{developer.betfair.com},
#' for the different options.
#' @param marketProjection the type and amount of data returned about the market, see
#' section \strong{marketProjection} in \link{BettingEnums}, or visit
#' \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#BettingEnums-MarketProjection}{developer.betfair.com}
#' @param sort the order of results, see section \strong{sort} in \link{BettingEnums}, or
#' visit \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#BettingEnums-MarketSort}{developer.betfair.com}
#' @param maxResults limit on the number of results returned
#' @param keepRules when \strong{MARKET_DESCRIPTION} is entered into the \strong{marketProjection}
#' parameter, it returns a large amount of text containing the rules of the market, by default these
#' are discarded, change \code{keepRules = TRUE} to keep.
#'
#' @details You use \code{marketCatalogue} to retrieve the name of the market, the
#' names of selections and other information about markets.  Market Data Request
#' Limits apply to requests.
#'
#' @section marketFilter:
#' Paramaters that can be included in the \code{filter} list
#' \itemize{
#'      \item \strong{bspOnly} \code{(boolean)} Restrict to BSP (Betfair Starting Price)
#'      markets only, TRUE, or non-BSP markets, FALSE. If not specified then returns
#'      both BSP and non-BSP markets.
#'      \item \strong{competitionIds} \code{(string)} Restrict markets by the competitions
#'      associated with the market.
#'      \item \strong{eventIds} \code{(string)} Restrict markets by the event Id
#'      associated with the market.
#'      \item \strong{eventTypeIds} \code{(string)} Restrict markets by event type
#'      associated with the market, ie. Football, Hockey, etc.
#'      \item \strong{exchangeIds} \code{(string)} Restrict markets by the Exchange
#'      where the market operates. As of Jun 11, 2015, \strong{not available}.
#'      \item \strong{inPlayOnly} \code{boolean} Restrict to markets that are
#'      currently in play, TRUE, or not currently in play, FALSE. If not specified
#'      returns both.
#'      \item \strong{marketBettingTypes} see section \strong{MarketBettingType} in
#'      \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#MarketBettingType}{developer.betfair.com}
#'      Restrict to markets that match the betting type of the market, ie. Odds,
#'      Asian Handicap Singles, Asian Handicap Doubles.
#'      \item \strong{marketCountries} \code{string} Restrict to markets that are in the
#'      specified country or countries.
#'      \item \strong{marketIds} \code{string} Restrict markets by the market Id
#'      associated with the market.
#'      \item \strong{marketStartTime} see section \strong{TimeRange} Restrict markets
#'      with a market start time before or after the specified date.
#'      \item \strong{marketTypeCodes} \code{string} Restrict to markets that match
#'      the type of the market, ie. MATCH_ODDS, HALF_TIME_SCORE. You should use this
#'      instead of relying on the market name as the market type codes are the same
#'      in all locales.
#'      \item \strong{textQuery} \code{string} Restrict markets by any text associated
#'      with the market such as Name, Event, Competition, etc. You can include a wildcard
#'      (*) character, as long as it is not the first character.
#'      \item \strong{turnInPlayEnabled} \code{boolean} Restrict to markets that will
#'      turn in play, TRUE, or will not turn in play, FALSE. If not specified returns
#'      both.
#'      \item \strong{venues} \code{string} Restrict markets by the venue associated
#'      with the market. Currently, as of Jun 11, 2015, only Horse Racing markets
#'      have venues.
#'      \item \strong{withOrders} see section \strong{OrderStatus} in
#'      \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#OrderStatus}{developer.betfair.com}
#'      Restrict to markets that I have one or more orders in these status.
#' }
#'
#' @section TimeRange:
#' \itemize{
#'      \item \strong{from} \code{date} From date.
#'      \item \strong{to} \code{date} To date
#' }
#'
#' @return a dataframe of markets that does not change (or changes very rarely), will
#' contain data about the market ids, selections and other info, with a selection
#' of the following variables:
NULL

#' venues method
#'
#' @description venues associated with markets
#'
#' @name venues
#'
#' @param filter list to select desired markets, see \link{marketFilter}, or marketFilter section below,
#' or visit \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Type+Definitions#BettingTypeDefinitions-MarketFilter}{developer.betfair.com},
#' for the different options.
#'
#' @section marketFilter:
#' Paramaters that can be included in the \code{filter} list
#' \itemize{
#'      \item \strong{bspOnly} \code{(boolean)} Restrict to BSP (Betfair Starting Price)
#'      markets only, TRUE, or non-BSP markets, FALSE. If not specified then returns
#'      both BSP and non-BSP markets.
#'      \item \strong{competitionIds} \code{(string)} Restrict markets by the competitions
#'      associated with the market.
#'      \item \strong{eventIds} \code{(string)} Restrict markets by the event Id
#'      associated with the market.
#'      \item \strong{eventTypeIds} \code{(string)} Restrict markets by event type
#'      associated with the market, ie. Football, Hockey, etc.
#'      \item \strong{exchangeIds} \code{(string)} Restrict markets by the Exchange
#'      where the market operates. As of Jun 11, 2015, \strong{not available}.
#'      \item \strong{inPlayOnly} \code{boolean} Restrict to markets that are
#'      currently in play, TRUE, or not currently in play, FALSE. If not specified
#'      returns both.
#'      \item \strong{marketBettingTypes} see section \strong{MarketBettingType} in
#'      \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#MarketBettingType}{developer.betfair.com}
#'      Restrict to markets that match the betting type of the market, ie. Odds,
#'      Asian Handicap Singles, Asian Handicap Doubles.
#'      \item \strong{marketCountries} \code{string} Restrict to markets that are in the
#'      specified country or countries.
#'      \item \strong{marketIds} \code{string} Restrict markets by the market Id
#'      associated with the market.
#'      \item \strong{marketStartTime} see section \strong{TimeRange} Restrict markets
#'      with a market start time before or after the specified date.
#'      \item \strong{marketTypeCodes} \code{string} Restrict to markets that match
#'      the type of the market, ie. MATCH_ODDS, HALF_TIME_SCORE. You should use this
#'      instead of relying on the market name as the market type codes are the same
#'      in all locales.
#'      \item \strong{textQuery} \code{string} Restrict markets by any text associated
#'      with the market such as Name, Event, Competition, etc. You can include a wildcard
#'      (*) character, as long as it is not the first character.
#'      \item \strong{turnInPlayEnabled} \code{boolean} Restrict to markets that will
#'      turn in play, TRUE, or will not turn in play, FALSE. If not specified returns
#'      both.
#'      \item \strong{venues} \code{string} Restrict markets by the venue associated
#'      with the market. Currently, as of Jun 11, 2015, only Horse Racing markets
#'      have venues.
#'      \item \strong{withOrders} see section \strong{OrderStatus} in
#'      \href{https://api.developer.betfair.com/services/webapps/docs/display/1smk3cen4v3lu3yomq5qye0ni/Betting+Enums#OrderStatus}{developer.betfair.com}
#'      Restrict to markets that I have one or more orders in these status.
#' }
#'
#' @section TimeRange:
#' \itemize{
#'      \item \strong{from} \code{date} From date.
#'      \item \strong{to} \code{date} To date
#' }
#'
#' @return a dataframe of venues (ie. Cheltenham, Ascot) associated with markets
#' selected by the \code{filter} parameter, only Horse Racing markets are
#' associated with a venue.
NULL