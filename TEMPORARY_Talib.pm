
#
# GENERATED WITH PDL::PP! Don't modify!
#
package PDL::Finance::Talib;

@EXPORT_OK  = qw( PDL::PP TA_BBANDS PDL::PP TA_DEMA PDL::PP TA_EMA PDL::PP TA_HT_TRENDLINE PDL::PP TA_KAMA PDL::PP TA_MA PDL::PP TA_MAMA PDL::PP TA_MAVP PDL::PP TA_MIDPOINT PDL::PP TA_MIDPRICE PDL::PP TA_SAR PDL::PP TA_SAREXT PDL::PP TA_SMA PDL::PP TA_T3 PDL::PP TA_TEMA PDL::PP TA_TRIMA PDL::PP TA_WMA PDL::PP TA_ATR PDL::PP TA_NATR PDL::PP TA_TRANGE PDL::PP TA_ADX PDL::PP TA_ADXR PDL::PP TA_APO PDL::PP TA_AROON PDL::PP TA_AROONOSC PDL::PP TA_BOP PDL::PP TA_CCI PDL::PP TA_CMO PDL::PP TA_DX PDL::PP TA_MACD PDL::PP TA_MACDEXT PDL::PP TA_MACDFIX PDL::PP TA_MFI PDL::PP TA_MINUS_DI PDL::PP TA_MINUS_DM PDL::PP TA_MOM PDL::PP TA_PLUS_DI PDL::PP TA_PLUS_DM PDL::PP TA_PPO PDL::PP TA_ROC PDL::PP TA_ROCP PDL::PP TA_ROCR PDL::PP TA_ROCR100 PDL::PP TA_RSI PDL::PP TA_STOCH PDL::PP TA_STOCHF PDL::PP TA_STOCHRSI PDL::PP TA_TRIX PDL::PP TA_ULTOSC PDL::PP TA_WILLR PDL::PP TA_HT_DCPERIOD PDL::PP TA_HT_DCPHASE PDL::PP TA_HT_PHASOR PDL::PP TA_HT_SINE PDL::PP TA_HT_TRENDMODE PDL::PP TA_AD PDL::PP TA_ADOSC PDL::PP TA_OBV PDL::PP TA_CDL2CROWS PDL::PP TA_CDL3BLACKCROWS PDL::PP TA_CDL3INSIDE PDL::PP TA_CDL3LINESTRIKE PDL::PP TA_CDL3OUTSIDE PDL::PP TA_CDL3STARSINSOUTH PDL::PP TA_CDL3WHITESOLDIERS PDL::PP TA_CDLABANDONEDBABY PDL::PP TA_CDLADVANCEBLOCK PDL::PP TA_CDLBELTHOLD PDL::PP TA_CDLBREAKAWAY PDL::PP TA_CDLCLOSINGMARUBOZU PDL::PP TA_CDLCONCEALBABYSWALL PDL::PP TA_CDLCOUNTERATTACK PDL::PP TA_CDLDARKCLOUDCOVER PDL::PP TA_CDLDOJI PDL::PP TA_CDLDOJISTAR PDL::PP TA_CDLDRAGONFLYDOJI PDL::PP TA_CDLENGULFING PDL::PP TA_CDLEVENINGDOJISTAR PDL::PP TA_CDLEVENINGSTAR PDL::PP TA_CDLGAPSIDESIDEWHITE PDL::PP TA_CDLGRAVESTONEDOJI PDL::PP TA_CDLHAMMER PDL::PP TA_CDLHANGINGMAN PDL::PP TA_CDLHARAMI PDL::PP TA_CDLHARAMICROSS PDL::PP TA_CDLHIGHWAVE PDL::PP TA_CDLHIKKAKE PDL::PP TA_CDLHIKKAKEMOD PDL::PP TA_CDLHOMINGPIGEON PDL::PP TA_CDLIDENTICAL3CROWS PDL::PP TA_CDLINNECK PDL::PP TA_CDLINVERTEDHAMMER PDL::PP TA_CDLKICKING PDL::PP TA_CDLKICKINGBYLENGTH PDL::PP TA_CDLLADDERBOTTOM PDL::PP TA_CDLLONGLEGGEDDOJI PDL::PP TA_CDLLONGLINE PDL::PP TA_CDLMARUBOZU PDL::PP TA_CDLMATCHINGLOW PDL::PP TA_CDLMATHOLD PDL::PP TA_CDLMORNINGDOJISTAR PDL::PP TA_CDLMORNINGSTAR PDL::PP TA_CDLONNECK PDL::PP TA_CDLPIERCING PDL::PP TA_CDLRICKSHAWMAN PDL::PP TA_CDLRISEFALL3METHODS PDL::PP TA_CDLSEPARATINGLINES PDL::PP TA_CDLSHOOTINGSTAR PDL::PP TA_CDLSHORTLINE PDL::PP TA_CDLSPINNINGTOP PDL::PP TA_CDLSTALLEDPATTERN PDL::PP TA_CDLSTICKSANDWICH PDL::PP TA_CDLTAKURI PDL::PP TA_CDLTASUKIGAP PDL::PP TA_CDLTHRUSTING PDL::PP TA_CDLTRISTAR PDL::PP TA_CDLUNIQUE3RIVER PDL::PP TA_CDLUPSIDEGAP2CROWS PDL::PP TA_CDLXSIDEGAP3METHODS PDL::PP TA_BETA PDL::PP TA_CORREL PDL::PP TA_LINEARREG PDL::PP TA_LINEARREG_ANGLE PDL::PP TA_LINEARREG_INTERCEPT PDL::PP TA_LINEARREG_SLOPE PDL::PP TA_STDDEV PDL::PP TA_TSF PDL::PP TA_VAR PDL::PP TA_AVGPRICE PDL::PP TA_MEDPRICE PDL::PP TA_TYPPRICE PDL::PP TA_WCLPRICE );
%EXPORT_TAGS = (Func=>[@EXPORT_OK]);

use PDL::Core;
use PDL::Exporter;
use DynaLoader;



   $PDL::Finance::Talib::VERSION = 0.003;
   @ISA    = ( 'PDL::Exporter','DynaLoader' );
   push @PDL::Core::PP, __PACKAGE__;
   bootstrap PDL::Finance::Talib $VERSION;




=head1 NAME

PDL::Finance::Talib - Technical Analysis Library (http://ta-lib.org) bindings for PDL

=head1 SYNOPSIS

 use PDL;
 use PDL::Finance::Talib;

 # first load market data you want to analyze
 my $open   = ... ; # 1D piddle
 my $high   = ... ; # 1D piddle
 my $low    = ... ; # 1D piddle
 my $close  = ... ; # 1D piddle
 my $volume = ... ; # 1D piddle

 my $period = 20;
 my $moving_average = TA_SMA($close, $period);
 my $money_flow_index = TA_MFI($high, $low, $close, $volume, $period);
 # both $moving_average and $money_flow_index are 1D piddles

=head1 DESCRIPTION

TA-Lib library - L<http://ta-lib.org> - is a multi-platform tool for market analysis. TA-Lib is widely used by trading
software developers requiring to perform technical analysis of financial market data.

This module provides an L<PDL|PDL> interface for TA-Lib library. It combines rich TA-Lib functionality with excelent
L<PDL|PDL> performance of handling huge data.

If you are not a L<PDL|PDL> user you might be interested in L<Finance::TA|Finance::TA> module which provides approximately
the same set of functions working with common perl data structures (which is fine if you are not about to process large
data sets and if you generally do not worry about performace).

=head1 FUNCTION INDEX

=head2 Group: Overlap Studies

L<TA_BBANDS|/TA_BBANDS> (Bollinger Bands), L<TA_DEMA|/TA_DEMA> (Double Exponential Moving Average), L<TA_EMA|/TA_EMA> (Exponential Moving Average), L<TA_HT_TRENDLINE|/TA_HT_TRENDLINE> (Hilbert Transform - Instantaneous Trendline), L<TA_KAMA|/TA_KAMA> (Kaufman Adaptive Moving Average), L<TA_MA|/TA_MA> (Moving average), L<TA_MAMA|/TA_MAMA> (MESA Adaptive Moving Average), L<TA_MAVP|/TA_MAVP> (Moving average with variable period), L<TA_MIDPOINT|/TA_MIDPOINT> (MidPoint over period), L<TA_MIDPRICE|/TA_MIDPRICE> (Midpoint Price over period), L<TA_SAR|/TA_SAR> (Parabolic SAR), L<TA_SAREXT|/TA_SAREXT> (Parabolic SAR - Extended), L<TA_SMA|/TA_SMA> (Simple Moving Average), L<TA_T3|/TA_T3> (Triple Exponential Moving Average (T3)), L<TA_TEMA|/TA_TEMA> (Triple Exponential Moving Average), L<TA_TRIMA|/TA_TRIMA> (Triangular Moving Average), L<TA_WMA|/TA_WMA> (Weighted Moving Average)

=head2 Group: Volatility Indicators

L<TA_ATR|/TA_ATR> (Average True Range), L<TA_NATR|/TA_NATR> (Normalized Average True Range), L<TA_TRANGE|/TA_TRANGE> (True Range)

=head2 Group: Momentum Indicators

L<TA_ADX|/TA_ADX> (Average Directional Movement Index), L<TA_ADXR|/TA_ADXR> (Average Directional Movement Index Rating), L<TA_APO|/TA_APO> (Absolute Price Oscillator), L<TA_AROON|/TA_AROON> (Aroon), L<TA_AROONOSC|/TA_AROONOSC> (Aroon Oscillator), L<TA_BOP|/TA_BOP> (Balance Of Power), L<TA_CCI|/TA_CCI> (Commodity Channel Index), L<TA_CMO|/TA_CMO> (Chande Momentum Oscillator), L<TA_DX|/TA_DX> (Directional Movement Index), L<TA_MACD|/TA_MACD> (Moving Average Convergence/Divergence), L<TA_MACDEXT|/TA_MACDEXT> (MACD with controllable MA type), L<TA_MACDFIX|/TA_MACDFIX> (Moving Average Convergence/Divergence Fix 12/26), L<TA_MFI|/TA_MFI> (Money Flow Index), L<TA_MINUS_DI|/TA_MINUS_DI> (Minus Directional Indicator), L<TA_MINUS_DM|/TA_MINUS_DM> (Minus Directional Movement), L<TA_MOM|/TA_MOM> (Momentum), L<TA_PLUS_DI|/TA_PLUS_DI> (Plus Directional Indicator), L<TA_PLUS_DM|/TA_PLUS_DM> (Plus Directional Movement), L<TA_PPO|/TA_PPO> (Percentage Price Oscillator), L<TA_ROC|/TA_ROC> (Rate of change : ((price/prevPrice)-1)*100), L<TA_ROCP|/TA_ROCP> (Rate of change Percentage: (price-prevPrice)/prevPrice), L<TA_ROCR|/TA_ROCR> (Rate of change ratio: (price/prevPrice)), L<TA_ROCR100|/TA_ROCR100> (Rate of change ratio 100 scale: (price/prevPrice)*100), L<TA_RSI|/TA_RSI> (Relative Strength Index), L<TA_STOCH|/TA_STOCH> (Stochastic), L<TA_STOCHF|/TA_STOCHF> (Stochastic Fast), L<TA_STOCHRSI|/TA_STOCHRSI> (Stochastic Relative Strength Index), L<TA_TRIX|/TA_TRIX> (1-day Rate-Of-Change (ROC) of a Triple Smooth EMA), L<TA_ULTOSC|/TA_ULTOSC> (Ultimate Oscillator), L<TA_WILLR|/TA_WILLR> (Williams' %R)

=head2 Group: Cycle Indicators

L<TA_HT_DCPERIOD|/TA_HT_DCPERIOD> (Hilbert Transform - Dominant Cycle Period), L<TA_HT_DCPHASE|/TA_HT_DCPHASE> (Hilbert Transform - Dominant Cycle Phase), L<TA_HT_PHASOR|/TA_HT_PHASOR> (Hilbert Transform - Phasor Components), L<TA_HT_SINE|/TA_HT_SINE> (Hilbert Transform - SineWave), L<TA_HT_TRENDMODE|/TA_HT_TRENDMODE> (Hilbert Transform - Trend vs Cycle Mode)

=head2 Group: Volume Indicators

L<TA_AD|/TA_AD> (Chaikin A/D Line), L<TA_ADOSC|/TA_ADOSC> (Chaikin A/D Oscillator), L<TA_OBV|/TA_OBV> (On Balance Volume)

=head2 Group: Pattern Recognition

L<TA_CDL2CROWS|/TA_CDL2CROWS> (Two Crows), L<TA_CDL3BLACKCROWS|/TA_CDL3BLACKCROWS> (Three Black Crows), L<TA_CDL3INSIDE|/TA_CDL3INSIDE> (Three Inside Up/Down), L<TA_CDL3LINESTRIKE|/TA_CDL3LINESTRIKE> (Three-Line Strike ), L<TA_CDL3OUTSIDE|/TA_CDL3OUTSIDE> (Three Outside Up/Down), L<TA_CDL3STARSINSOUTH|/TA_CDL3STARSINSOUTH> (Three Stars In The South), L<TA_CDL3WHITESOLDIERS|/TA_CDL3WHITESOLDIERS> (Three Advancing White Soldiers), L<TA_CDLABANDONEDBABY|/TA_CDLABANDONEDBABY> (Abandoned Baby), L<TA_CDLADVANCEBLOCK|/TA_CDLADVANCEBLOCK> (Advance Block), L<TA_CDLBELTHOLD|/TA_CDLBELTHOLD> (Belt-hold), L<TA_CDLBREAKAWAY|/TA_CDLBREAKAWAY> (Breakaway), L<TA_CDLCLOSINGMARUBOZU|/TA_CDLCLOSINGMARUBOZU> (Closing Marubozu), L<TA_CDLCONCEALBABYSWALL|/TA_CDLCONCEALBABYSWALL> (Concealing Baby Swallow), L<TA_CDLCOUNTERATTACK|/TA_CDLCOUNTERATTACK> (Counterattack), L<TA_CDLDARKCLOUDCOVER|/TA_CDLDARKCLOUDCOVER> (Dark Cloud Cover), L<TA_CDLDOJI|/TA_CDLDOJI> (Doji), L<TA_CDLDOJISTAR|/TA_CDLDOJISTAR> (Doji Star), L<TA_CDLDRAGONFLYDOJI|/TA_CDLDRAGONFLYDOJI> (Dragonfly Doji), L<TA_CDLENGULFING|/TA_CDLENGULFING> (Engulfing Pattern), L<TA_CDLEVENINGDOJISTAR|/TA_CDLEVENINGDOJISTAR> (Evening Doji Star), L<TA_CDLEVENINGSTAR|/TA_CDLEVENINGSTAR> (Evening Star), L<TA_CDLGAPSIDESIDEWHITE|/TA_CDLGAPSIDESIDEWHITE> (Up/Down-gap side-by-side white lines), L<TA_CDLGRAVESTONEDOJI|/TA_CDLGRAVESTONEDOJI> (Gravestone Doji), L<TA_CDLHAMMER|/TA_CDLHAMMER> (Hammer), L<TA_CDLHANGINGMAN|/TA_CDLHANGINGMAN> (Hanging Man), L<TA_CDLHARAMI|/TA_CDLHARAMI> (Harami Pattern), L<TA_CDLHARAMICROSS|/TA_CDLHARAMICROSS> (Harami Cross Pattern), L<TA_CDLHIGHWAVE|/TA_CDLHIGHWAVE> (High-Wave Candle), L<TA_CDLHIKKAKE|/TA_CDLHIKKAKE> (Hikkake Pattern), L<TA_CDLHIKKAKEMOD|/TA_CDLHIKKAKEMOD> (Modified Hikkake Pattern), L<TA_CDLHOMINGPIGEON|/TA_CDLHOMINGPIGEON> (Homing Pigeon), L<TA_CDLIDENTICAL3CROWS|/TA_CDLIDENTICAL3CROWS> (Identical Three Crows), L<TA_CDLINNECK|/TA_CDLINNECK> (In-Neck Pattern), L<TA_CDLINVERTEDHAMMER|/TA_CDLINVERTEDHAMMER> (Inverted Hammer), L<TA_CDLKICKING|/TA_CDLKICKING> (Kicking), L<TA_CDLKICKINGBYLENGTH|/TA_CDLKICKINGBYLENGTH> (Kicking - bull/bear determined by the longer marubozu), L<TA_CDLLADDERBOTTOM|/TA_CDLLADDERBOTTOM> (Ladder Bottom), L<TA_CDLLONGLEGGEDDOJI|/TA_CDLLONGLEGGEDDOJI> (Long Legged Doji), L<TA_CDLLONGLINE|/TA_CDLLONGLINE> (Long Line Candle), L<TA_CDLMARUBOZU|/TA_CDLMARUBOZU> (Marubozu), L<TA_CDLMATCHINGLOW|/TA_CDLMATCHINGLOW> (Matching Low), L<TA_CDLMATHOLD|/TA_CDLMATHOLD> (Mat Hold), L<TA_CDLMORNINGDOJISTAR|/TA_CDLMORNINGDOJISTAR> (Morning Doji Star), L<TA_CDLMORNINGSTAR|/TA_CDLMORNINGSTAR> (Morning Star), L<TA_CDLONNECK|/TA_CDLONNECK> (On-Neck Pattern), L<TA_CDLPIERCING|/TA_CDLPIERCING> (Piercing Pattern), L<TA_CDLRICKSHAWMAN|/TA_CDLRICKSHAWMAN> (Rickshaw Man), L<TA_CDLRISEFALL3METHODS|/TA_CDLRISEFALL3METHODS> (Rising/Falling Three Methods), L<TA_CDLSEPARATINGLINES|/TA_CDLSEPARATINGLINES> (Separating Lines), L<TA_CDLSHOOTINGSTAR|/TA_CDLSHOOTINGSTAR> (Shooting Star), L<TA_CDLSHORTLINE|/TA_CDLSHORTLINE> (Short Line Candle), L<TA_CDLSPINNINGTOP|/TA_CDLSPINNINGTOP> (Spinning Top), L<TA_CDLSTALLEDPATTERN|/TA_CDLSTALLEDPATTERN> (Stalled Pattern), L<TA_CDLSTICKSANDWICH|/TA_CDLSTICKSANDWICH> (Stick Sandwich), L<TA_CDLTAKURI|/TA_CDLTAKURI> (Takuri (Dragonfly Doji with very long lower shadow)), L<TA_CDLTASUKIGAP|/TA_CDLTASUKIGAP> (Tasuki Gap), L<TA_CDLTHRUSTING|/TA_CDLTHRUSTING> (Thrusting Pattern), L<TA_CDLTRISTAR|/TA_CDLTRISTAR> (Tristar Pattern), L<TA_CDLUNIQUE3RIVER|/TA_CDLUNIQUE3RIVER> (Unique 3 River), L<TA_CDLUPSIDEGAP2CROWS|/TA_CDLUPSIDEGAP2CROWS> (Upside Gap Two Crows), L<TA_CDLXSIDEGAP3METHODS|/TA_CDLXSIDEGAP3METHODS> (Upside/Downside Gap Three Methods)

=head2 Group: Statistic Functions

L<TA_BETA|/TA_BETA> (Beta), L<TA_CORREL|/TA_CORREL> (Pearson's Correlation Coefficient (r)), L<TA_LINEARREG|/TA_LINEARREG> (Linear Regression), L<TA_LINEARREG_ANGLE|/TA_LINEARREG_ANGLE> (Linear Regression Angle), L<TA_LINEARREG_INTERCEPT|/TA_LINEARREG_INTERCEPT> (Linear Regression Intercept), L<TA_LINEARREG_SLOPE|/TA_LINEARREG_SLOPE> (Linear Regression Slope), L<TA_STDDEV|/TA_STDDEV> (Standard Deviation), L<TA_TSF|/TA_TSF> (Time Series Forecast), L<TA_VAR|/TA_VAR> (Variance)

=head2 Group: Price Transform

L<TA_AVGPRICE|/TA_AVGPRICE> (Average Price), L<TA_MEDPRICE|/TA_MEDPRICE> (Median Price), L<TA_TYPPRICE|/TA_TYPPRICE> (Typical Price), L<TA_WCLPRICE|/TA_WCLPRICE> (Weighted Close Price)

=head1 HANDLING BAD VALUES

Most of the available functions may return BAD values, for example:

  use PDL;
  use PDL::Finance::Talib;
  my $PD = pdl([0, 1, 2, 3, 4, 5]);
  my $MA = TA_MA($PD, 3, 1);
  print $MA;      # prints: [BAD BAD 1 2 3 4]

All available functions handles BAD values in input piddles (BAD values at the beginning are skipped), for example:

  use PDL;
  use PDL::Finance::Talib;
  my $PD = pdl([0, 1, 2, 3, 4, 5]);
  my $MA1 = TA_MA($PD, 3, 1);
  say $MA1;      # prints: [BAD BAD 1 2 3 4]
  my $MA2 = TA_MA($MA1, 3, 1);
  say $MA2;      # prints: [BAD BAD BAD BAD 2 3]

=cut






=head1 FUNCTIONS



=cut






=head2 TA_BBANDS

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double InNbDevUp(); double InNbDevDn(); int InMAType(); double [o]outpdlUpperBand(n); double [o]outpdlMiddleBand(n); double [o]outpdlLowerBand(n))

Bollinger Bands

  ($outpdlUpperBand, $outpdlMiddleBand, $outpdlLowerBand) = TA_BBANDS($inpdl, $InTimePeriod, $InNbDevUp, $InNbDevDn, $InMAType);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 5
 #     valid range: min=2 max=100000
 # $InNbDevUp [Deviation multiplier for upper band] - real number
 #     default: 2
 #     valid range: min=-3e+037 max=3e+037
 # $InNbDevDn [Deviation multiplier for lower band] - real number
 #     default: 2
 #     valid range: min=-3e+037 max=3e+037
 # $InMAType [Type of Moving Average] - integer
 #     default: 0
 #     valid values: 0=SMA 1=EMA 2=WMA 3=DEMA 4=TEMA 5=TRIMA 6=KAMA 7=MAMA 8=T3
 # returns: $outpdlUpperBand - 1D piddle
 # returns: $outpdlMiddleBand - 1D piddle
 # returns: $outpdlLowerBand - 1D piddle


=for bad

TA_BBANDS processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_BBANDS = \&PDL::TA_BBANDS;





=head2 TA_DEMA

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Double Exponential Moving Average

  $outpdl = TA_DEMA($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 30
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_DEMA processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_DEMA = \&PDL::TA_DEMA;





=head2 TA_EMA

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Exponential Moving Average

  $outpdl = TA_EMA($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 30
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_EMA processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_EMA = \&PDL::TA_EMA;





=head2 TA_HT_TRENDLINE

=for sig

  Signature: (double inpdl(n); double [o]outpdl(n))

Hilbert Transform - Instantaneous Trendline

  $outpdl = TA_HT_TRENDLINE($inpdl);

 # $inpdl - 1D piddle with input data
 # returns: $outpdl - 1D piddle


=for bad

TA_HT_TRENDLINE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_HT_TRENDLINE = \&PDL::TA_HT_TRENDLINE;





=head2 TA_KAMA

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Kaufman Adaptive Moving Average

  $outpdl = TA_KAMA($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 30
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_KAMA processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_KAMA = \&PDL::TA_KAMA;





=head2 TA_MA

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); int InMAType(); double [o]outpdl(n))

Moving average

  $outpdl = TA_MA($inpdl, $InTimePeriod, $InMAType);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 30
 #     valid range: min=1 max=100000
 # $InMAType [Type of Moving Average] - integer
 #     default: 0
 #     valid values: 0=SMA 1=EMA 2=WMA 3=DEMA 4=TEMA 5=TRIMA 6=KAMA 7=MAMA 8=T3
 # returns: $outpdl - 1D piddle


=for bad

TA_MA processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_MA = \&PDL::TA_MA;





=head2 TA_MAMA

=for sig

  Signature: (double inpdl(n); double InFastLimit(); double InSlowLimit(); double [o]outMAMA(n); double [o]outFAMA(n))

MESA Adaptive Moving Average

  ($outMAMA, $outFAMA) = TA_MAMA($inpdl, $InFastLimit, $InSlowLimit);

 # $inpdl - 1D piddle with input data
 # $InFastLimit [Upper limit use in the adaptive algorithm] - real number
 #     default: 0.5
 #     valid range: min=0.01 max=0.99
 # $InSlowLimit [Lower limit use in the adaptive algorithm] - real number
 #     default: 0.05
 #     valid range: min=0.01 max=0.99
 # returns: $outMAMA - 1D piddle
 # returns: $outFAMA - 1D piddle


=for bad

TA_MAMA processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_MAMA = \&PDL::TA_MAMA;





=head2 TA_MAVP

=for sig

  Signature: (double inpdl(n); double inPeriods(n); int InMinPeriod(); int InMaxPeriod(); int InMAType(); double [o]outpdl(n))

Moving average with variable period

  $outpdl = TA_MAVP($inpdl, $inPeriods, $InMinPeriod, $InMaxPeriod, $InMAType);

 # $inpdl - 1D piddle with input data
 # $inPeriods - 1D piddle
 # $InMinPeriod [Value less than minimum will be changed to Minimum period] - integer
 #     default: 2
 #     valid range: min=2 max=100000
 # $InMaxPeriod [Value higher than maximum will be changed to Maximum period] - integer
 #     default: 30
 #     valid range: min=2 max=100000
 # $InMAType [Type of Moving Average] - integer
 #     default: 0
 #     valid values: 0=SMA 1=EMA 2=WMA 3=DEMA 4=TEMA 5=TRIMA 6=KAMA 7=MAMA 8=T3
 # returns: $outpdl - 1D piddle


=for bad

TA_MAVP processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_MAVP = \&PDL::TA_MAVP;





=head2 TA_MIDPOINT

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

MidPoint over period

  $outpdl = TA_MIDPOINT($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_MIDPOINT processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_MIDPOINT = \&PDL::TA_MIDPOINT;





=head2 TA_MIDPRICE

=for sig

  Signature: (double high(n); double low(n); int InTimePeriod(); double [o]outpdl(n))

Midpoint Price over period

  $outpdl = TA_MIDPRICE($high, $low, $InTimePeriod);

 # $high, $low - 1D piddles, both have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_MIDPRICE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_MIDPRICE = \&PDL::TA_MIDPRICE;





=head2 TA_SAR

=for sig

  Signature: (double high(n); double low(n); double InAcceleration(); double InMaximum(); double [o]outpdl(n))

Parabolic SAR

  $outpdl = TA_SAR($high, $low, $InAcceleration, $InMaximum);

 # $high, $low - 1D piddles, both have to be the same size
 # $InAcceleration [Acceleration Factor used up to the Maximum value] - real number
 #     default: 0.02
 #     valid range: min=0 max=3e+037
 # $InMaximum [Acceleration Factor Maximum value] - real number
 #     default: 0.2
 #     valid range: min=0 max=3e+037
 # returns: $outpdl - 1D piddle


=for bad

TA_SAR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_SAR = \&PDL::TA_SAR;





=head2 TA_SAREXT

=for sig

  Signature: (double high(n); double low(n); double InStartValue(); double InOffsetOnReverse(); double InAccelerationInitLong(); double InAccelerationLong(); double InAccelerationMaxLong(); double InAccelerationInitShort(); double InAccelerationShort(); double InAccelerationMaxShort(); double [o]outpdl(n))

Parabolic SAR - Extended

  $outpdl = TA_SAREXT($high, $low, $InStartValue, $InOffsetOnReverse, $InAccelerationInitLong, $InAccelerationLong, $InAccelerationMaxLong, $InAccelerationInitShort, $InAccelerationShort, $InAccelerationMaxShort);

 # $high, $low - 1D piddles, both have to be the same size
 # $InStartValue [Start value and direction. 0 for Auto, >0 for Long, <0 for Short] - real number
 #     default: 0
 #     valid range: min=-3e+037 max=3e+037
 # $InOffsetOnReverse [Percent offset added/removed to initial stop on short/long reversal] - real number
 #     default: 0
 #     valid range: min=0 max=3e+037
 # $InAccelerationInitLong [Acceleration Factor initial value for the Long direction] - real number
 #     default: 0.02
 #     valid range: min=0 max=3e+037
 # $InAccelerationLong [Acceleration Factor for the Long direction] - real number
 #     default: 0.02
 #     valid range: min=0 max=3e+037
 # $InAccelerationMaxLong [Acceleration Factor maximum value for the Long direction] - real number
 #     default: 0.2
 #     valid range: min=0 max=3e+037
 # $InAccelerationInitShort [Acceleration Factor initial value for the Short direction] - real number
 #     default: 0.02
 #     valid range: min=0 max=3e+037
 # $InAccelerationShort [Acceleration Factor for the Short direction] - real number
 #     default: 0.02
 #     valid range: min=0 max=3e+037
 # $InAccelerationMaxShort [Acceleration Factor maximum value for the Short direction] - real number
 #     default: 0.2
 #     valid range: min=0 max=3e+037
 # returns: $outpdl - 1D piddle


=for bad

TA_SAREXT processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_SAREXT = \&PDL::TA_SAREXT;





=head2 TA_SMA

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Simple Moving Average

  $outpdl = TA_SMA($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 30
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_SMA processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_SMA = \&PDL::TA_SMA;





=head2 TA_T3

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double InVFactor(); double [o]outpdl(n))

Triple Exponential Moving Average (T3)

  $outpdl = TA_T3($inpdl, $InTimePeriod, $InVFactor);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 5
 #     valid range: min=2 max=100000
 # $InVFactor [Volume Factor] - real number
 #     default: 0.7
 #     valid range: min=0 max=1
 # returns: $outpdl - 1D piddle


=for bad

TA_T3 processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_T3 = \&PDL::TA_T3;





=head2 TA_TEMA

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Triple Exponential Moving Average

  $outpdl = TA_TEMA($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 30
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_TEMA processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_TEMA = \&PDL::TA_TEMA;





=head2 TA_TRIMA

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Triangular Moving Average

  $outpdl = TA_TRIMA($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 30
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_TRIMA processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_TRIMA = \&PDL::TA_TRIMA;





=head2 TA_WMA

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Weighted Moving Average

  $outpdl = TA_WMA($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 30
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_WMA processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_WMA = \&PDL::TA_WMA;





=head2 TA_ATR

=for sig

  Signature: (double high(n); double low(n); double close(n); int InTimePeriod(); double [o]outpdl(n))

Average True Range

  $outpdl = TA_ATR($high, $low, $close, $InTimePeriod);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_ATR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_ATR = \&PDL::TA_ATR;





=head2 TA_NATR

=for sig

  Signature: (double high(n); double low(n); double close(n); int InTimePeriod(); double [o]outpdl(n))

Normalized Average True Range

  $outpdl = TA_NATR($high, $low, $close, $InTimePeriod);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_NATR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_NATR = \&PDL::TA_NATR;





=head2 TA_TRANGE

=for sig

  Signature: (double high(n); double low(n); double close(n); double [o]outpdl(n))

True Range

  $outpdl = TA_TRANGE($high, $low, $close);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outpdl - 1D piddle


=for bad

TA_TRANGE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_TRANGE = \&PDL::TA_TRANGE;





=head2 TA_ADX

=for sig

  Signature: (double high(n); double low(n); double close(n); int InTimePeriod(); double [o]outpdl(n))

Average Directional Movement Index

  $outpdl = TA_ADX($high, $low, $close, $InTimePeriod);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_ADX processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_ADX = \&PDL::TA_ADX;





=head2 TA_ADXR

=for sig

  Signature: (double high(n); double low(n); double close(n); int InTimePeriod(); double [o]outpdl(n))

Average Directional Movement Index Rating

  $outpdl = TA_ADXR($high, $low, $close, $InTimePeriod);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_ADXR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_ADXR = \&PDL::TA_ADXR;





=head2 TA_APO

=for sig

  Signature: (double inpdl(n); int InFastPeriod(); int InSlowPeriod(); int InMAType(); double [o]outpdl(n))

Absolute Price Oscillator

  $outpdl = TA_APO($inpdl, $InFastPeriod, $InSlowPeriod, $InMAType);

 # $inpdl - 1D piddle with input data
 # $InFastPeriod [Number of period for the fast MA] - integer
 #     default: 12
 #     valid range: min=2 max=100000
 # $InSlowPeriod [Number of period for the slow MA] - integer
 #     default: 26
 #     valid range: min=2 max=100000
 # $InMAType [Type of Moving Average] - integer
 #     default: 0
 #     valid values: 0=SMA 1=EMA 2=WMA 3=DEMA 4=TEMA 5=TRIMA 6=KAMA 7=MAMA 8=T3
 # returns: $outpdl - 1D piddle


=for bad

TA_APO processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_APO = \&PDL::TA_APO;





=head2 TA_AROON

=for sig

  Signature: (double high(n); double low(n); int InTimePeriod(); double [o]outAroonDown(n); double [o]outAroonUp(n))

Aroon

  ($outAroonDown, $outAroonUp) = TA_AROON($high, $low, $InTimePeriod);

 # $high, $low - 1D piddles, both have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outAroonDown - 1D piddle
 # returns: $outAroonUp - 1D piddle


=for bad

TA_AROON processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_AROON = \&PDL::TA_AROON;





=head2 TA_AROONOSC

=for sig

  Signature: (double high(n); double low(n); int InTimePeriod(); double [o]outpdl(n))

Aroon Oscillator

  $outpdl = TA_AROONOSC($high, $low, $InTimePeriod);

 # $high, $low - 1D piddles, both have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_AROONOSC processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_AROONOSC = \&PDL::TA_AROONOSC;





=head2 TA_BOP

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); double [o]outpdl(n))

Balance Of Power

  $outpdl = TA_BOP($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outpdl - 1D piddle


=for bad

TA_BOP processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_BOP = \&PDL::TA_BOP;





=head2 TA_CCI

=for sig

  Signature: (double high(n); double low(n); double close(n); int InTimePeriod(); double [o]outpdl(n))

Commodity Channel Index

  $outpdl = TA_CCI($high, $low, $close, $InTimePeriod);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_CCI processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CCI = \&PDL::TA_CCI;





=head2 TA_CMO

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Chande Momentum Oscillator

  $outpdl = TA_CMO($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_CMO processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CMO = \&PDL::TA_CMO;





=head2 TA_DX

=for sig

  Signature: (double high(n); double low(n); double close(n); int InTimePeriod(); double [o]outpdl(n))

Directional Movement Index

  $outpdl = TA_DX($high, $low, $close, $InTimePeriod);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_DX processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_DX = \&PDL::TA_DX;





=head2 TA_MACD

=for sig

  Signature: (double inpdl(n); int InFastPeriod(); int InSlowPeriod(); int InSignalPeriod(); double [o]outMACD(n); double [o]outMACDSignal(n); double [o]outMACDHist(n))

Moving Average Convergence/Divergence

  ($outMACD, $outMACDSignal, $outMACDHist) = TA_MACD($inpdl, $InFastPeriod, $InSlowPeriod, $InSignalPeriod);

 # $inpdl - 1D piddle with input data
 # $InFastPeriod [Number of period for the fast MA] - integer
 #     default: 12
 #     valid range: min=2 max=100000
 # $InSlowPeriod [Number of period for the slow MA] - integer
 #     default: 26
 #     valid range: min=2 max=100000
 # $InSignalPeriod [Smoothing for the signal line (nb of period)] - integer
 #     default: 9
 #     valid range: min=1 max=100000
 # returns: $outMACD - 1D piddle
 # returns: $outMACDSignal - 1D piddle
 # returns: $outMACDHist - 1D piddle


=for bad

TA_MACD processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_MACD = \&PDL::TA_MACD;





=head2 TA_MACDEXT

=for sig

  Signature: (double inpdl(n); int InFastPeriod(); int InFastMAType(); int InSlowPeriod(); int InSlowMAType(); int InSignalPeriod(); int InSignalMAType(); double [o]outMACD(n); double [o]outMACDSignal(n); double [o]outMACDHist(n))

MACD with controllable MA type

  ($outMACD, $outMACDSignal, $outMACDHist) = TA_MACDEXT($inpdl, $InFastPeriod, $InFastMAType, $InSlowPeriod, $InSlowMAType, $InSignalPeriod, $InSignalMAType);

 # $inpdl - 1D piddle with input data
 # $InFastPeriod [Number of period for the fast MA] - integer
 #     default: 12
 #     valid range: min=2 max=100000
 # $InFastMAType [Type of Moving Average for fast MA] - integer
 #     default: 0
 #     valid values: 0=SMA 1=EMA 2=WMA 3=DEMA 4=TEMA 5=TRIMA 6=KAMA 7=MAMA 8=T3
 # $InSlowPeriod [Number of period for the slow MA] - integer
 #     default: 26
 #     valid range: min=2 max=100000
 # $InSlowMAType [Type of Moving Average for slow MA] - integer
 #     default: 0
 #     valid values: 0=SMA 1=EMA 2=WMA 3=DEMA 4=TEMA 5=TRIMA 6=KAMA 7=MAMA 8=T3
 # $InSignalPeriod [Smoothing for the signal line (nb of period)] - integer
 #     default: 9
 #     valid range: min=1 max=100000
 # $InSignalMAType [Type of Moving Average for signal line] - integer
 #     default: 0
 #     valid values: 0=SMA 1=EMA 2=WMA 3=DEMA 4=TEMA 5=TRIMA 6=KAMA 7=MAMA 8=T3
 # returns: $outMACD - 1D piddle
 # returns: $outMACDSignal - 1D piddle
 # returns: $outMACDHist - 1D piddle


=for bad

TA_MACDEXT processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_MACDEXT = \&PDL::TA_MACDEXT;





=head2 TA_MACDFIX

=for sig

  Signature: (double inpdl(n); int InSignalPeriod(); double [o]outMACD(n); double [o]outMACDSignal(n); double [o]outMACDHist(n))

Moving Average Convergence/Divergence Fix 12/26

  ($outMACD, $outMACDSignal, $outMACDHist) = TA_MACDFIX($inpdl, $InSignalPeriod);

 # $inpdl - 1D piddle with input data
 # $InSignalPeriod [Smoothing for the signal line (nb of period)] - integer
 #     default: 9
 #     valid range: min=1 max=100000
 # returns: $outMACD - 1D piddle
 # returns: $outMACDSignal - 1D piddle
 # returns: $outMACDHist - 1D piddle


=for bad

TA_MACDFIX processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_MACDFIX = \&PDL::TA_MACDFIX;





=head2 TA_MFI

=for sig

  Signature: (double high(n); double low(n); double close(n); double volume(n); int InTimePeriod(); double [o]outpdl(n))

Money Flow Index

  $outpdl = TA_MFI($high, $low, $close, $volume, $InTimePeriod);

 # $high, $low, $close, $volume - 1D piddles, all have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_MFI processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_MFI = \&PDL::TA_MFI;





=head2 TA_MINUS_DI

=for sig

  Signature: (double high(n); double low(n); double close(n); int InTimePeriod(); double [o]outpdl(n))

Minus Directional Indicator

  $outpdl = TA_MINUS_DI($high, $low, $close, $InTimePeriod);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_MINUS_DI processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_MINUS_DI = \&PDL::TA_MINUS_DI;





=head2 TA_MINUS_DM

=for sig

  Signature: (double high(n); double low(n); int InTimePeriod(); double [o]outpdl(n))

Minus Directional Movement

  $outpdl = TA_MINUS_DM($high, $low, $InTimePeriod);

 # $high, $low - 1D piddles, both have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_MINUS_DM processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_MINUS_DM = \&PDL::TA_MINUS_DM;





=head2 TA_MOM

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Momentum

  $outpdl = TA_MOM($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 10
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_MOM processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_MOM = \&PDL::TA_MOM;





=head2 TA_PLUS_DI

=for sig

  Signature: (double high(n); double low(n); double close(n); int InTimePeriod(); double [o]outpdl(n))

Plus Directional Indicator

  $outpdl = TA_PLUS_DI($high, $low, $close, $InTimePeriod);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_PLUS_DI processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_PLUS_DI = \&PDL::TA_PLUS_DI;





=head2 TA_PLUS_DM

=for sig

  Signature: (double high(n); double low(n); int InTimePeriod(); double [o]outpdl(n))

Plus Directional Movement

  $outpdl = TA_PLUS_DM($high, $low, $InTimePeriod);

 # $high, $low - 1D piddles, both have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_PLUS_DM processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_PLUS_DM = \&PDL::TA_PLUS_DM;





=head2 TA_PPO

=for sig

  Signature: (double inpdl(n); int InFastPeriod(); int InSlowPeriod(); int InMAType(); double [o]outpdl(n))

Percentage Price Oscillator

  $outpdl = TA_PPO($inpdl, $InFastPeriod, $InSlowPeriod, $InMAType);

 # $inpdl - 1D piddle with input data
 # $InFastPeriod [Number of period for the fast MA] - integer
 #     default: 12
 #     valid range: min=2 max=100000
 # $InSlowPeriod [Number of period for the slow MA] - integer
 #     default: 26
 #     valid range: min=2 max=100000
 # $InMAType [Type of Moving Average] - integer
 #     default: 0
 #     valid values: 0=SMA 1=EMA 2=WMA 3=DEMA 4=TEMA 5=TRIMA 6=KAMA 7=MAMA 8=T3
 # returns: $outpdl - 1D piddle


=for bad

TA_PPO processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_PPO = \&PDL::TA_PPO;





=head2 TA_ROC

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Rate of change : ((price/prevPrice-1)*100)

  $outpdl = TA_ROC($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 10
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_ROC processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_ROC = \&PDL::TA_ROC;





=head2 TA_ROCP

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Rate of change Percentage: (price-prevPrice/prevPrice)

  $outpdl = TA_ROCP($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 10
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_ROCP processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_ROCP = \&PDL::TA_ROCP;





=head2 TA_ROCR

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Rate of change ratio: (price/prevPrice)

  $outpdl = TA_ROCR($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 10
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_ROCR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_ROCR = \&PDL::TA_ROCR;





=head2 TA_ROCR100

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Rate of change ratio 100 scale: (price/prevPrice*100)

  $outpdl = TA_ROCR100($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 10
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_ROCR100 processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_ROCR100 = \&PDL::TA_ROCR100;





=head2 TA_RSI

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Relative Strength Index

  $outpdl = TA_RSI($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_RSI processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_RSI = \&PDL::TA_RSI;





=head2 TA_STOCH

=for sig

  Signature: (double high(n); double low(n); double close(n); int InFastK_Period(); int InSlowK_Period(); int InSlowK_MAType(); int InSlowD_Period(); int InSlowD_MAType(); double [o]outSlowK(n); double [o]outSlowD(n))

Stochastic

  ($outSlowK, $outSlowD) = TA_STOCH($high, $low, $close, $InFastK_Period, $InSlowK_Period, $InSlowK_MAType, $InSlowD_Period, $InSlowD_MAType);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # $InFastK_Period [Time period for building the Fast-K line] - integer
 #     default: 5
 #     valid range: min=1 max=100000
 # $InSlowK_Period [Smoothing for making the Slow-K line. Usually set to 3] - integer
 #     default: 3
 #     valid range: min=1 max=100000
 # $InSlowK_MAType [Type of Moving Average for Slow-K] - integer
 #     default: 0
 #     valid values: 0=SMA 1=EMA 2=WMA 3=DEMA 4=TEMA 5=TRIMA 6=KAMA 7=MAMA 8=T3
 # $InSlowD_Period [Smoothing for making the Slow-D line] - integer
 #     default: 3
 #     valid range: min=1 max=100000
 # $InSlowD_MAType [Type of Moving Average for Slow-D] - integer
 #     default: 0
 #     valid values: 0=SMA 1=EMA 2=WMA 3=DEMA 4=TEMA 5=TRIMA 6=KAMA 7=MAMA 8=T3
 # returns: $outSlowK - 1D piddle
 # returns: $outSlowD - 1D piddle


=for bad

TA_STOCH processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_STOCH = \&PDL::TA_STOCH;





=head2 TA_STOCHF

=for sig

  Signature: (double high(n); double low(n); double close(n); int InFastK_Period(); int InFastD_Period(); int InFastD_MAType(); double [o]outFastK(n); double [o]outFastD(n))

Stochastic Fast

  ($outFastK, $outFastD) = TA_STOCHF($high, $low, $close, $InFastK_Period, $InFastD_Period, $InFastD_MAType);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # $InFastK_Period [Time period for building the Fast-K line] - integer
 #     default: 5
 #     valid range: min=1 max=100000
 # $InFastD_Period [Smoothing for making the Fast-D line. Usually set to 3] - integer
 #     default: 3
 #     valid range: min=1 max=100000
 # $InFastD_MAType [Type of Moving Average for Fast-D] - integer
 #     default: 0
 #     valid values: 0=SMA 1=EMA 2=WMA 3=DEMA 4=TEMA 5=TRIMA 6=KAMA 7=MAMA 8=T3
 # returns: $outFastK - 1D piddle
 # returns: $outFastD - 1D piddle


=for bad

TA_STOCHF processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_STOCHF = \&PDL::TA_STOCHF;





=head2 TA_STOCHRSI

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); int InFastK_Period(); int InFastD_Period(); int InFastD_MAType(); double [o]outFastK(n); double [o]outFastD(n))

Stochastic Relative Strength Index

  ($outFastK, $outFastD) = TA_STOCHRSI($inpdl, $InTimePeriod, $InFastK_Period, $InFastD_Period, $InFastD_MAType);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # $InFastK_Period [Time period for building the Fast-K line] - integer
 #     default: 5
 #     valid range: min=1 max=100000
 # $InFastD_Period [Smoothing for making the Fast-D line. Usually set to 3] - integer
 #     default: 3
 #     valid range: min=1 max=100000
 # $InFastD_MAType [Type of Moving Average for Fast-D] - integer
 #     default: 0
 #     valid values: 0=SMA 1=EMA 2=WMA 3=DEMA 4=TEMA 5=TRIMA 6=KAMA 7=MAMA 8=T3
 # returns: $outFastK - 1D piddle
 # returns: $outFastD - 1D piddle


=for bad

TA_STOCHRSI processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_STOCHRSI = \&PDL::TA_STOCHRSI;





=head2 TA_TRIX

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

1-day Rate-Of-Change (ROC of a Triple Smooth EMA)

  $outpdl = TA_TRIX($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 30
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_TRIX processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_TRIX = \&PDL::TA_TRIX;





=head2 TA_ULTOSC

=for sig

  Signature: (double high(n); double low(n); double close(n); int InTimePeriod1(); int InTimePeriod2(); int InTimePeriod3(); double [o]outpdl(n))

Ultimate Oscillator

  $outpdl = TA_ULTOSC($high, $low, $close, $InTimePeriod1, $InTimePeriod2, $InTimePeriod3);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # $InTimePeriod1 [Number of bars for 1st period.] - integer
 #     default: 7
 #     valid range: min=1 max=100000
 # $InTimePeriod2 [Number of bars fro 2nd period] - integer
 #     default: 14
 #     valid range: min=1 max=100000
 # $InTimePeriod3 [Number of bars for 3rd period] - integer
 #     default: 28
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_ULTOSC processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_ULTOSC = \&PDL::TA_ULTOSC;





=head2 TA_WILLR

=for sig

  Signature: (double high(n); double low(n); double close(n); int InTimePeriod(); double [o]outpdl(n))

Williams' %R

  $outpdl = TA_WILLR($high, $low, $close, $InTimePeriod);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_WILLR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_WILLR = \&PDL::TA_WILLR;





=head2 TA_HT_DCPERIOD

=for sig

  Signature: (double inpdl(n); double [o]outpdl(n))

Hilbert Transform - Dominant Cycle Period

  $outpdl = TA_HT_DCPERIOD($inpdl);

 # $inpdl - 1D piddle with input data
 # returns: $outpdl - 1D piddle


=for bad

TA_HT_DCPERIOD processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_HT_DCPERIOD = \&PDL::TA_HT_DCPERIOD;





=head2 TA_HT_DCPHASE

=for sig

  Signature: (double inpdl(n); double [o]outpdl(n))

Hilbert Transform - Dominant Cycle Phase

  $outpdl = TA_HT_DCPHASE($inpdl);

 # $inpdl - 1D piddle with input data
 # returns: $outpdl - 1D piddle


=for bad

TA_HT_DCPHASE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_HT_DCPHASE = \&PDL::TA_HT_DCPHASE;





=head2 TA_HT_PHASOR

=for sig

  Signature: (double inpdl(n); double [o]outInPhase(n); double [o]outQuadrature(n))

Hilbert Transform - Phasor Components

  ($outInPhase, $outQuadrature) = TA_HT_PHASOR($inpdl);

 # $inpdl - 1D piddle with input data
 # returns: $outInPhase - 1D piddle
 # returns: $outQuadrature - 1D piddle


=for bad

TA_HT_PHASOR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_HT_PHASOR = \&PDL::TA_HT_PHASOR;





=head2 TA_HT_SINE

=for sig

  Signature: (double inpdl(n); double [o]outSine(n); double [o]outLeadSine(n))

Hilbert Transform - SineWave

  ($outSine, $outLeadSine) = TA_HT_SINE($inpdl);

 # $inpdl - 1D piddle with input data
 # returns: $outSine - 1D piddle
 # returns: $outLeadSine - 1D piddle


=for bad

TA_HT_SINE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_HT_SINE = \&PDL::TA_HT_SINE;





=head2 TA_HT_TRENDMODE

=for sig

  Signature: (double inpdl(n); int [o]outInteger(n))

Hilbert Transform - Trend vs Cycle Mode

  $outInteger = TA_HT_TRENDMODE($inpdl);

 # $inpdl - 1D piddle with input data
 # returns: $outInteger - 1D piddle


=for bad

TA_HT_TRENDMODE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_HT_TRENDMODE = \&PDL::TA_HT_TRENDMODE;





=head2 TA_AD

=for sig

  Signature: (double high(n); double low(n); double close(n); double volume(n); double [o]outpdl(n))

Chaikin A/D Line

  $outpdl = TA_AD($high, $low, $close, $volume);

 # $high, $low, $close, $volume - 1D piddles, all have to be the same size
 # returns: $outpdl - 1D piddle


=for bad

TA_AD processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_AD = \&PDL::TA_AD;





=head2 TA_ADOSC

=for sig

  Signature: (double high(n); double low(n); double close(n); double volume(n); int InFastPeriod(); int InSlowPeriod(); double [o]outpdl(n))

Chaikin A/D Oscillator

  $outpdl = TA_ADOSC($high, $low, $close, $volume, $InFastPeriod, $InSlowPeriod);

 # $high, $low, $close, $volume - 1D piddles, all have to be the same size
 # $InFastPeriod [Number of period for the fast MA] - integer
 #     default: 3
 #     valid range: min=2 max=100000
 # $InSlowPeriod [Number of period for the slow MA] - integer
 #     default: 10
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_ADOSC processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_ADOSC = \&PDL::TA_ADOSC;





=head2 TA_OBV

=for sig

  Signature: (double inpdl(n); double volume(n); double [o]outpdl(n))

On Balance Volume

  $outpdl = TA_OBV($inpdl, $volume);

 # $inpdl - 1D piddle with input data
 # $volume - 1D piddle
 # returns: $outpdl - 1D piddle


=for bad

TA_OBV processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_OBV = \&PDL::TA_OBV;





=head2 TA_CDL2CROWS

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Two Crows

  $outInteger = TA_CDL2CROWS($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDL2CROWS processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDL2CROWS = \&PDL::TA_CDL2CROWS;





=head2 TA_CDL3BLACKCROWS

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Three Black Crows

  $outInteger = TA_CDL3BLACKCROWS($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDL3BLACKCROWS processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDL3BLACKCROWS = \&PDL::TA_CDL3BLACKCROWS;





=head2 TA_CDL3INSIDE

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Three Inside Up/Down

  $outInteger = TA_CDL3INSIDE($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDL3INSIDE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDL3INSIDE = \&PDL::TA_CDL3INSIDE;





=head2 TA_CDL3LINESTRIKE

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Three-Line Strike

  $outInteger = TA_CDL3LINESTRIKE($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDL3LINESTRIKE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDL3LINESTRIKE = \&PDL::TA_CDL3LINESTRIKE;





=head2 TA_CDL3OUTSIDE

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Three Outside Up/Down

  $outInteger = TA_CDL3OUTSIDE($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDL3OUTSIDE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDL3OUTSIDE = \&PDL::TA_CDL3OUTSIDE;





=head2 TA_CDL3STARSINSOUTH

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Three Stars In The South

  $outInteger = TA_CDL3STARSINSOUTH($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDL3STARSINSOUTH processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDL3STARSINSOUTH = \&PDL::TA_CDL3STARSINSOUTH;





=head2 TA_CDL3WHITESOLDIERS

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Three Advancing White Soldiers

  $outInteger = TA_CDL3WHITESOLDIERS($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDL3WHITESOLDIERS processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDL3WHITESOLDIERS = \&PDL::TA_CDL3WHITESOLDIERS;





=head2 TA_CDLABANDONEDBABY

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); double InPenetration(); int [o]outInteger(n))

Abandoned Baby

  $outInteger = TA_CDLABANDONEDBABY($open, $high, $low, $close, $InPenetration);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # $InPenetration [Percentage of penetration of a candle within another candle] - real number
 #     default: 0.3
 #     valid range: min=0 max=3e+037
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLABANDONEDBABY processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLABANDONEDBABY = \&PDL::TA_CDLABANDONEDBABY;





=head2 TA_CDLADVANCEBLOCK

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Advance Block

  $outInteger = TA_CDLADVANCEBLOCK($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLADVANCEBLOCK processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLADVANCEBLOCK = \&PDL::TA_CDLADVANCEBLOCK;





=head2 TA_CDLBELTHOLD

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Belt-hold

  $outInteger = TA_CDLBELTHOLD($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLBELTHOLD processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLBELTHOLD = \&PDL::TA_CDLBELTHOLD;





=head2 TA_CDLBREAKAWAY

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Breakaway

  $outInteger = TA_CDLBREAKAWAY($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLBREAKAWAY processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLBREAKAWAY = \&PDL::TA_CDLBREAKAWAY;





=head2 TA_CDLCLOSINGMARUBOZU

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Closing Marubozu

  $outInteger = TA_CDLCLOSINGMARUBOZU($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLCLOSINGMARUBOZU processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLCLOSINGMARUBOZU = \&PDL::TA_CDLCLOSINGMARUBOZU;





=head2 TA_CDLCONCEALBABYSWALL

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Concealing Baby Swallow

  $outInteger = TA_CDLCONCEALBABYSWALL($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLCONCEALBABYSWALL processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLCONCEALBABYSWALL = \&PDL::TA_CDLCONCEALBABYSWALL;





=head2 TA_CDLCOUNTERATTACK

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Counterattack

  $outInteger = TA_CDLCOUNTERATTACK($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLCOUNTERATTACK processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLCOUNTERATTACK = \&PDL::TA_CDLCOUNTERATTACK;





=head2 TA_CDLDARKCLOUDCOVER

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); double InPenetration(); int [o]outInteger(n))

Dark Cloud Cover

  $outInteger = TA_CDLDARKCLOUDCOVER($open, $high, $low, $close, $InPenetration);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # $InPenetration [Percentage of penetration of a candle within another candle] - real number
 #     default: 0.5
 #     valid range: min=0 max=3e+037
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLDARKCLOUDCOVER processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLDARKCLOUDCOVER = \&PDL::TA_CDLDARKCLOUDCOVER;





=head2 TA_CDLDOJI

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Doji

  $outInteger = TA_CDLDOJI($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLDOJI processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLDOJI = \&PDL::TA_CDLDOJI;





=head2 TA_CDLDOJISTAR

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Doji Star

  $outInteger = TA_CDLDOJISTAR($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLDOJISTAR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLDOJISTAR = \&PDL::TA_CDLDOJISTAR;





=head2 TA_CDLDRAGONFLYDOJI

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Dragonfly Doji

  $outInteger = TA_CDLDRAGONFLYDOJI($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLDRAGONFLYDOJI processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLDRAGONFLYDOJI = \&PDL::TA_CDLDRAGONFLYDOJI;





=head2 TA_CDLENGULFING

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Engulfing Pattern

  $outInteger = TA_CDLENGULFING($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLENGULFING processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLENGULFING = \&PDL::TA_CDLENGULFING;





=head2 TA_CDLEVENINGDOJISTAR

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); double InPenetration(); int [o]outInteger(n))

Evening Doji Star

  $outInteger = TA_CDLEVENINGDOJISTAR($open, $high, $low, $close, $InPenetration);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # $InPenetration [Percentage of penetration of a candle within another candle] - real number
 #     default: 0.3
 #     valid range: min=0 max=3e+037
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLEVENINGDOJISTAR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLEVENINGDOJISTAR = \&PDL::TA_CDLEVENINGDOJISTAR;





=head2 TA_CDLEVENINGSTAR

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); double InPenetration(); int [o]outInteger(n))

Evening Star

  $outInteger = TA_CDLEVENINGSTAR($open, $high, $low, $close, $InPenetration);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # $InPenetration [Percentage of penetration of a candle within another candle] - real number
 #     default: 0.3
 #     valid range: min=0 max=3e+037
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLEVENINGSTAR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLEVENINGSTAR = \&PDL::TA_CDLEVENINGSTAR;





=head2 TA_CDLGAPSIDESIDEWHITE

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Up/Down-gap side-by-side white lines

  $outInteger = TA_CDLGAPSIDESIDEWHITE($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLGAPSIDESIDEWHITE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLGAPSIDESIDEWHITE = \&PDL::TA_CDLGAPSIDESIDEWHITE;





=head2 TA_CDLGRAVESTONEDOJI

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Gravestone Doji

  $outInteger = TA_CDLGRAVESTONEDOJI($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLGRAVESTONEDOJI processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLGRAVESTONEDOJI = \&PDL::TA_CDLGRAVESTONEDOJI;





=head2 TA_CDLHAMMER

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Hammer

  $outInteger = TA_CDLHAMMER($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLHAMMER processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLHAMMER = \&PDL::TA_CDLHAMMER;





=head2 TA_CDLHANGINGMAN

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Hanging Man

  $outInteger = TA_CDLHANGINGMAN($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLHANGINGMAN processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLHANGINGMAN = \&PDL::TA_CDLHANGINGMAN;





=head2 TA_CDLHARAMI

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Harami Pattern

  $outInteger = TA_CDLHARAMI($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLHARAMI processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLHARAMI = \&PDL::TA_CDLHARAMI;





=head2 TA_CDLHARAMICROSS

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Harami Cross Pattern

  $outInteger = TA_CDLHARAMICROSS($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLHARAMICROSS processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLHARAMICROSS = \&PDL::TA_CDLHARAMICROSS;





=head2 TA_CDLHIGHWAVE

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

High-Wave Candle

  $outInteger = TA_CDLHIGHWAVE($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLHIGHWAVE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLHIGHWAVE = \&PDL::TA_CDLHIGHWAVE;





=head2 TA_CDLHIKKAKE

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Hikkake Pattern

  $outInteger = TA_CDLHIKKAKE($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLHIKKAKE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLHIKKAKE = \&PDL::TA_CDLHIKKAKE;





=head2 TA_CDLHIKKAKEMOD

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Modified Hikkake Pattern

  $outInteger = TA_CDLHIKKAKEMOD($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLHIKKAKEMOD processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLHIKKAKEMOD = \&PDL::TA_CDLHIKKAKEMOD;





=head2 TA_CDLHOMINGPIGEON

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Homing Pigeon

  $outInteger = TA_CDLHOMINGPIGEON($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLHOMINGPIGEON processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLHOMINGPIGEON = \&PDL::TA_CDLHOMINGPIGEON;





=head2 TA_CDLIDENTICAL3CROWS

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Identical Three Crows

  $outInteger = TA_CDLIDENTICAL3CROWS($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLIDENTICAL3CROWS processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLIDENTICAL3CROWS = \&PDL::TA_CDLIDENTICAL3CROWS;





=head2 TA_CDLINNECK

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

In-Neck Pattern

  $outInteger = TA_CDLINNECK($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLINNECK processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLINNECK = \&PDL::TA_CDLINNECK;





=head2 TA_CDLINVERTEDHAMMER

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Inverted Hammer

  $outInteger = TA_CDLINVERTEDHAMMER($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLINVERTEDHAMMER processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLINVERTEDHAMMER = \&PDL::TA_CDLINVERTEDHAMMER;





=head2 TA_CDLKICKING

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Kicking

  $outInteger = TA_CDLKICKING($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLKICKING processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLKICKING = \&PDL::TA_CDLKICKING;





=head2 TA_CDLKICKINGBYLENGTH

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Kicking - bull/bear determined by the longer marubozu

  $outInteger = TA_CDLKICKINGBYLENGTH($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLKICKINGBYLENGTH processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLKICKINGBYLENGTH = \&PDL::TA_CDLKICKINGBYLENGTH;





=head2 TA_CDLLADDERBOTTOM

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Ladder Bottom

  $outInteger = TA_CDLLADDERBOTTOM($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLLADDERBOTTOM processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLLADDERBOTTOM = \&PDL::TA_CDLLADDERBOTTOM;





=head2 TA_CDLLONGLEGGEDDOJI

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Long Legged Doji

  $outInteger = TA_CDLLONGLEGGEDDOJI($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLLONGLEGGEDDOJI processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLLONGLEGGEDDOJI = \&PDL::TA_CDLLONGLEGGEDDOJI;





=head2 TA_CDLLONGLINE

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Long Line Candle

  $outInteger = TA_CDLLONGLINE($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLLONGLINE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLLONGLINE = \&PDL::TA_CDLLONGLINE;





=head2 TA_CDLMARUBOZU

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Marubozu

  $outInteger = TA_CDLMARUBOZU($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLMARUBOZU processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLMARUBOZU = \&PDL::TA_CDLMARUBOZU;





=head2 TA_CDLMATCHINGLOW

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Matching Low

  $outInteger = TA_CDLMATCHINGLOW($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLMATCHINGLOW processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLMATCHINGLOW = \&PDL::TA_CDLMATCHINGLOW;





=head2 TA_CDLMATHOLD

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); double InPenetration(); int [o]outInteger(n))

Mat Hold

  $outInteger = TA_CDLMATHOLD($open, $high, $low, $close, $InPenetration);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # $InPenetration [Percentage of penetration of a candle within another candle] - real number
 #     default: 0.5
 #     valid range: min=0 max=3e+037
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLMATHOLD processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLMATHOLD = \&PDL::TA_CDLMATHOLD;





=head2 TA_CDLMORNINGDOJISTAR

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); double InPenetration(); int [o]outInteger(n))

Morning Doji Star

  $outInteger = TA_CDLMORNINGDOJISTAR($open, $high, $low, $close, $InPenetration);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # $InPenetration [Percentage of penetration of a candle within another candle] - real number
 #     default: 0.3
 #     valid range: min=0 max=3e+037
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLMORNINGDOJISTAR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLMORNINGDOJISTAR = \&PDL::TA_CDLMORNINGDOJISTAR;





=head2 TA_CDLMORNINGSTAR

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); double InPenetration(); int [o]outInteger(n))

Morning Star

  $outInteger = TA_CDLMORNINGSTAR($open, $high, $low, $close, $InPenetration);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # $InPenetration [Percentage of penetration of a candle within another candle] - real number
 #     default: 0.3
 #     valid range: min=0 max=3e+037
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLMORNINGSTAR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLMORNINGSTAR = \&PDL::TA_CDLMORNINGSTAR;





=head2 TA_CDLONNECK

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

On-Neck Pattern

  $outInteger = TA_CDLONNECK($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLONNECK processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLONNECK = \&PDL::TA_CDLONNECK;





=head2 TA_CDLPIERCING

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Piercing Pattern

  $outInteger = TA_CDLPIERCING($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLPIERCING processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLPIERCING = \&PDL::TA_CDLPIERCING;





=head2 TA_CDLRICKSHAWMAN

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Rickshaw Man

  $outInteger = TA_CDLRICKSHAWMAN($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLRICKSHAWMAN processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLRICKSHAWMAN = \&PDL::TA_CDLRICKSHAWMAN;





=head2 TA_CDLRISEFALL3METHODS

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Rising/Falling Three Methods

  $outInteger = TA_CDLRISEFALL3METHODS($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLRISEFALL3METHODS processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLRISEFALL3METHODS = \&PDL::TA_CDLRISEFALL3METHODS;





=head2 TA_CDLSEPARATINGLINES

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Separating Lines

  $outInteger = TA_CDLSEPARATINGLINES($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLSEPARATINGLINES processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLSEPARATINGLINES = \&PDL::TA_CDLSEPARATINGLINES;





=head2 TA_CDLSHOOTINGSTAR

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Shooting Star

  $outInteger = TA_CDLSHOOTINGSTAR($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLSHOOTINGSTAR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLSHOOTINGSTAR = \&PDL::TA_CDLSHOOTINGSTAR;





=head2 TA_CDLSHORTLINE

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Short Line Candle

  $outInteger = TA_CDLSHORTLINE($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLSHORTLINE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLSHORTLINE = \&PDL::TA_CDLSHORTLINE;





=head2 TA_CDLSPINNINGTOP

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Spinning Top

  $outInteger = TA_CDLSPINNINGTOP($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLSPINNINGTOP processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLSPINNINGTOP = \&PDL::TA_CDLSPINNINGTOP;





=head2 TA_CDLSTALLEDPATTERN

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Stalled Pattern

  $outInteger = TA_CDLSTALLEDPATTERN($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLSTALLEDPATTERN processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLSTALLEDPATTERN = \&PDL::TA_CDLSTALLEDPATTERN;





=head2 TA_CDLSTICKSANDWICH

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Stick Sandwich

  $outInteger = TA_CDLSTICKSANDWICH($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLSTICKSANDWICH processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLSTICKSANDWICH = \&PDL::TA_CDLSTICKSANDWICH;





=head2 TA_CDLTAKURI

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Takuri (Dragonfly Doji with very long lower shadow)

  $outInteger = TA_CDLTAKURI($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLTAKURI processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLTAKURI = \&PDL::TA_CDLTAKURI;





=head2 TA_CDLTASUKIGAP

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Tasuki Gap

  $outInteger = TA_CDLTASUKIGAP($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLTASUKIGAP processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLTASUKIGAP = \&PDL::TA_CDLTASUKIGAP;





=head2 TA_CDLTHRUSTING

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Thrusting Pattern

  $outInteger = TA_CDLTHRUSTING($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLTHRUSTING processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLTHRUSTING = \&PDL::TA_CDLTHRUSTING;





=head2 TA_CDLTRISTAR

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Tristar Pattern

  $outInteger = TA_CDLTRISTAR($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLTRISTAR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLTRISTAR = \&PDL::TA_CDLTRISTAR;





=head2 TA_CDLUNIQUE3RIVER

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Unique 3 River

  $outInteger = TA_CDLUNIQUE3RIVER($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLUNIQUE3RIVER processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLUNIQUE3RIVER = \&PDL::TA_CDLUNIQUE3RIVER;





=head2 TA_CDLUPSIDEGAP2CROWS

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Upside Gap Two Crows

  $outInteger = TA_CDLUPSIDEGAP2CROWS($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLUPSIDEGAP2CROWS processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLUPSIDEGAP2CROWS = \&PDL::TA_CDLUPSIDEGAP2CROWS;





=head2 TA_CDLXSIDEGAP3METHODS

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); int [o]outInteger(n))

Upside/Downside Gap Three Methods

  $outInteger = TA_CDLXSIDEGAP3METHODS($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outInteger - 1D piddle


=for bad

TA_CDLXSIDEGAP3METHODS processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CDLXSIDEGAP3METHODS = \&PDL::TA_CDLXSIDEGAP3METHODS;





=head2 TA_BETA

=for sig

  Signature: (double inpdl0(n); double inpdl1(n); int InTimePeriod(); double [o]outpdl(n))

Beta

  $outpdl = TA_BETA($inpdl0, $inpdl1, $InTimePeriod);

 # $inpdl0 - 1D piddle
 # $inpdl1 - 1D piddle
 # $InTimePeriod [Number of period] - integer
 #     default: 5
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_BETA processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_BETA = \&PDL::TA_BETA;





=head2 TA_CORREL

=for sig

  Signature: (double inpdl0(n); double inpdl1(n); int InTimePeriod(); double [o]outpdl(n))

Pearson's Correlation Coefficient (r)

  $outpdl = TA_CORREL($inpdl0, $inpdl1, $InTimePeriod);

 # $inpdl0 - 1D piddle
 # $inpdl1 - 1D piddle
 # $InTimePeriod [Number of period] - integer
 #     default: 30
 #     valid range: min=1 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_CORREL processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_CORREL = \&PDL::TA_CORREL;





=head2 TA_LINEARREG

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Linear Regression

  $outpdl = TA_LINEARREG($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_LINEARREG processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_LINEARREG = \&PDL::TA_LINEARREG;





=head2 TA_LINEARREG_ANGLE

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Linear Regression Angle

  $outpdl = TA_LINEARREG_ANGLE($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_LINEARREG_ANGLE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_LINEARREG_ANGLE = \&PDL::TA_LINEARREG_ANGLE;





=head2 TA_LINEARREG_INTERCEPT

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Linear Regression Intercept

  $outpdl = TA_LINEARREG_INTERCEPT($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_LINEARREG_INTERCEPT processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_LINEARREG_INTERCEPT = \&PDL::TA_LINEARREG_INTERCEPT;





=head2 TA_LINEARREG_SLOPE

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Linear Regression Slope

  $outpdl = TA_LINEARREG_SLOPE($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_LINEARREG_SLOPE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_LINEARREG_SLOPE = \&PDL::TA_LINEARREG_SLOPE;





=head2 TA_STDDEV

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double InNbDev(); double [o]outpdl(n))

Standard Deviation

  $outpdl = TA_STDDEV($inpdl, $InTimePeriod, $InNbDev);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 5
 #     valid range: min=2 max=100000
 # $InNbDev [Nb of deviations] - real number
 #     default: 1
 #     valid range: min=-3e+037 max=3e+037
 # returns: $outpdl - 1D piddle


=for bad

TA_STDDEV processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_STDDEV = \&PDL::TA_STDDEV;





=head2 TA_TSF

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double [o]outpdl(n))

Time Series Forecast

  $outpdl = TA_TSF($inpdl, $InTimePeriod);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 14
 #     valid range: min=2 max=100000
 # returns: $outpdl - 1D piddle


=for bad

TA_TSF processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_TSF = \&PDL::TA_TSF;





=head2 TA_VAR

=for sig

  Signature: (double inpdl(n); int InTimePeriod(); double InNbDev(); double [o]outpdl(n))

Variance

  $outpdl = TA_VAR($inpdl, $InTimePeriod, $InNbDev);

 # $inpdl - 1D piddle with input data
 # $InTimePeriod [Number of period] - integer
 #     default: 5
 #     valid range: min=1 max=100000
 # $InNbDev [Nb of deviations] - real number
 #     default: 1
 #     valid range: min=-3e+037 max=3e+037
 # returns: $outpdl - 1D piddle


=for bad

TA_VAR processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_VAR = \&PDL::TA_VAR;





=head2 TA_AVGPRICE

=for sig

  Signature: (double open(n); double high(n); double low(n); double close(n); double [o]outpdl(n))

Average Price

  $outpdl = TA_AVGPRICE($open, $high, $low, $close);

 # $open, $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outpdl - 1D piddle


=for bad

TA_AVGPRICE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_AVGPRICE = \&PDL::TA_AVGPRICE;





=head2 TA_MEDPRICE

=for sig

  Signature: (double high(n); double low(n); double [o]outpdl(n))

Median Price

  $outpdl = TA_MEDPRICE($high, $low);

 # $high, $low - 1D piddles, both have to be the same size
 # returns: $outpdl - 1D piddle


=for bad

TA_MEDPRICE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_MEDPRICE = \&PDL::TA_MEDPRICE;





=head2 TA_TYPPRICE

=for sig

  Signature: (double high(n); double low(n); double close(n); double [o]outpdl(n))

Typical Price

  $outpdl = TA_TYPPRICE($high, $low, $close);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outpdl - 1D piddle


=for bad

TA_TYPPRICE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_TYPPRICE = \&PDL::TA_TYPPRICE;





=head2 TA_WCLPRICE

=for sig

  Signature: (double high(n); double low(n); double close(n); double [o]outpdl(n))

Weighted Close Price

  $outpdl = TA_WCLPRICE($high, $low, $close);

 # $high, $low, $close - 1D piddles, all have to be the same size
 # returns: $outpdl - 1D piddle


=for bad

TA_WCLPRICE processes bad values.
It will set the bad-value flag of all output piddles if the flag is set for any of the input piddles.


=cut






*TA_WCLPRICE = \&PDL::TA_WCLPRICE;



;

=head1 LICENSE

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut




# Exit with OK status

1;

		   