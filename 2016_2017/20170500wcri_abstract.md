# Detecting data anomalies on the basis of summary statistics

Chris HJ Hartgerink<sup>1</sup>, Jelte M Wicherts<sup>1</sup>, Marcel ALM van Assen<sup>1</sup><sup>2</sup>

<sup>1</sup>Department of Methodology and Statistics, Tilburg University, Tilburg, the Netherlands

<sup>2</sup>Department of Sociology, Utrecht University, Utrecht, the Netherlands

## Objective

Despite initiatives to increase data sharing, raw data underlying research articles are frequently unavailable (some even argue against it). Consequently, statistical methods to detect data anomalies in raw data are conditional on actually retrieving those raw data. We investigate the performance of methods to detect data anomalies due to data fabrication based solely on summary results typically reported in empirical research articles.

## Method

We tested the performance of two statistical methods in 36 genuine- and 39 fabricated datasets on the anchoring effect ([osf.io/b24pq](https://osf.io/b24pq)). We inspected the variation in variances in independent conditions and anomalous amounts of high *p*-values in nonsignificant results. Considering we hardly know how researchers fabricate experimental data, we asked actual researchers to fabricate data for experimental studies instead of simulating datasets. 

## Results

We noticed that, as a group, fabricated nonsignificant effect sizes resembled genuine nonsignificant effects rather well. For fabricated significant effects, fabricators exaggerated effect sizes drastically (13/39 had r>.9; these were also the largest effect sizes across the board). Upon analyzing the datasets individually for data fabrication, we refined the variance of variances method by altering the assumption from one underlying population variance across all groups to condition-specific variances. This greatly improved the performance of this method (AUC = .42 before, .77 after). Detecting data anomalies in nonsignificant results, based on excessive amounts of high *p*-values, performed barely better than chance (AUC = .52 and .53 for two different nonsignificant effects). 


## Conclusion

The results of this study on detecting data anomalies indicates researchers might be better at fabricating nonsignificant effects than fabricating significant effects. The variation of variances method seems fairly good, whereas analyzing high *p*-values performs at chance level. Moreover, large effect sizes (r>.9) seem like an easy first step in detecting data anomalies in research articles.