
//Elucigene product lines:
//  (1) Cystic Fibrosis: CF-EU2v1, CF Iberian, CF UK, CF4v2, CF29v2, CF30v2, CF-PolyT
//  (2) Rapid Aneuploidy Analysis: QST*Rplusv2, QST*R, QST*R-XYv2, QST*R-21
//           QST*R-18, QST*R-13, QST*R-PL
//  (3) Reproductive Health: Male Factor Infertility, MFI-Yplus, QST*R-PL
//  (4) Genetic Disease Diagnosis: TRP-F, TRP-Fplus, TRP, AAT, Ashplex1, Ashplex 2, FastFrax


import Foundation

class ProductLine
{
    // Variables
    var name: String            // name of the product line
    var products: [Product]     // all products in the line
    
    class var numberOfProducts: Int {
    
        get{
            return (ProductLine.CysticFibrosis().products.count + ProductLine.RapidAneuploidyAnalysis().products.count + ProductLine.GeneticDiseaseDiagnosis().products.count)
        
        
        
        }
    }
    
    init(named: String, includeProducts: [Product])
    {
        name = named
        products = includeProducts
    }
    
    class func productLines() -> [ProductLine]
    {
        return [self.CysticFibrosis(), self.RapidAneuploidyAnalysis(), self.ReproductiveHealth(), self.GeneticDiseaseDiagnosis()]
        
    }
    
    
    fileprivate class func CysticFibrosis() -> ProductLine {
        //  (1) Cystic Fibrosis: CF-EU2v1, CF Iberian, CF UK, CF4v2, CF29v2, CF30v2, CF-PolyT
        var products = [Product]()
        
        products.append(Product(titled: "CF-EU2v1", description: "Detects 50 European CF mutations", imageName: "CF-EU2v1.png", detail: "The Elucigene CF-EU2v1 assay is the only commercially available pan-European cystic fibrosis testing kit designed specifically to address the most common mutations found across populations of European origin. The assay identifies 50 mutations in total and also analyses the intron 8 polyT tract with accurate measurement of the adjacent TG repeat. \n\nProduct Codes: \n\nCF2EUB2 - 50 Tests \n\nCF2EUBX - 10 Tests", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/08/Cystic_Fibrosis.pdf", webpageURL: "http://www.elucigene.com/product/cfeu2v1/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/08/CF2EUBYEN.pdf"))
        
        
        products.append(Product(titled: "CF Iberian Panel", description: "Detects 12 additonal Iberian CF mutations", imageName: "CF Iberian Panel.png", detail: "The Elucigene CF Iberian panel is designed to extend the coverage of Elucigene CF-EU2v1 specifically to address the most common mutations found in Spanish and Portuguese populations. The Elucigene CF Iberian panel identifies 12 additional mutations in total. \n\nElucigene CF Iberian Panel is a multiplexed assay comprising a single PCR. In a single reaction mix both mutant and wild type alleles are detected for twelve mutations within the CFTR gene. In the CF Iberian Panel assay, mutant alleles are visualised as blue amplicon peaks and wild type alleles are visualised as green amplicon peaks. The internal amplification control markers (non-cystic fibrosis) found in CF-EU2v1 are also included in the CF Iberian Panel mix. These are visualised as red amplicon peaks and are used to monitor the efficiency of sample amplification and aid patient identification when running the CF Iberian Panel alongside the Elucigene CF-EU2v1 assay.\n\nProduct Code: CFIBNB1", literatureURL: "", webpageURL: "http://www.elucigene.com/product/cf-iberian/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2015/07/CFIBNBYEN-001.pdf"))
        
        products.append(Product(titled: "CF-UK Panel", description: "Detects 11 additonal UK CF mutations", imageName: "CF-UK Panel.png", detail: "The Elucigene CF UK panel is designed to extend the coverage of Elucigene CF-EU2v1 specifically to address the most common mutations found in UK populations. \n\nThe Elucigene CF UK panel identifies 11 additional mutations in total. Elucigene CF UK Panel is a multiplexed assay comprising a single PCR. In a single reaction mix both mutant and wild type alleles are detected for eleven mutations within the CFTR gene. In the CF UK Panel assay, mutant alleles are visualised as blue amplicon peaks and wild type alleles are visualised as green amplicon peaks. The internal amplification control markers (non-cystic fibrosis) found in CF-EU2v1 are also included in the CF UK Panel mix. These are visualised as red amplicon peaks and are used to monitor the efficiency of sample amplification and aid patient identification when running the CF UK Panel alongside the Elucigene CF-EU2v1 assay.\n\nProduct Code: CF1UKB1", literatureURL: "", webpageURL: "http://www.elucigene.com/product/cf-uk/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2015/08/CFUKBYEN-001.pdf"))
        
        products.append(Product(titled: "CF4v2", description: "Detects 4 most common CF mutations", imageName: "CF4v2.png", detail: "The CF4v2 assay is used for the simultaneous detection of the 4 most common Cystic Fibrosis Muations.\n\nProduct Code: CF4HTB1", literatureURL: "", webpageURL: "http://www.elucigene.com/product/cf4v2/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/09/CF4HTBYEN.pdf"))

        products.append(Product(titled: "CF29v2", description: "Gel based 29 CF mutation test", imageName: "CF29v2.png", detail: "Elucigene CF29v2 has been developed to provide laboratories with a simple and accurate means of routinely testing for 29 of the most prevalent mutations in both the European Caucasian and Ashkenazi Jewish populations. \n\nGenotype information for F508del makes the test highly valuable in both disease diagnosis and screening applications. Elucigene CF Poly-T (Cat No. PT003B2) is available separately for reflex testing R117H positive patients to investigate CBAVD status.\n\nElucigene CF29v2 is supplied as four optimised ARMS primer multiplexes for the rapid detection of 29 common CFTR mutations.\n\nProduct Codes: \n\nCF029B1 - 25 Tests with AmpliTaq Gold\n\nCF029B2 - 50 Tests with AmpliTaq Gold\n\nYF029B2 - 50 Tests without AmpliTaq Gold", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/08/CF29v2.pdf", webpageURL: "http://www.elucigene.com/product/cf29v2/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/08/CF029BYEN-001.pdf"))
        
        products.append(Product(titled: "CF30v2", description: "Gel based 30 French CF mutation test", imageName: "CF30v2.png", detail: "Elucigene CF30v2 is a gel based assay that has been developed and approved for routine use in the French national neonatal cystic fibrosis screening program. The assay detects the thirty most frequent mutations within the French population. Elucigene CF30v2 is also relevant for screening other European populations, particularly those of Spanish and Scandinavian descent.\n\nProduct Code: CF030B1", literatureURL: "", webpageURL: "http://www.elucigene.com/product/cf30v2/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/08/CF030BYEN.pdf"))
        
        products.append(Product(titled: "CF Poly-T", description: "Gel based CF Poly-T Tract test", imageName: "CF Poly-T.png", detail: "The polymorphic polythymidine tract at the junction of intron 8 and exon 9 influences transcription. The number of thymidine residues (5T, 7T or 9T) affects the splicing efficiency of exon 9. If the 5T allele is present, a proportion of exon 9 transcripts will be absent resulting in non-functional protein and variable CF symptoms. It is reported that the number of TG repeats upstream of the polythymidine tract can also influence splicing of exon 9. If present on the same allele as the 5T variant (cis) the larger the number of TG repeats, the higher the proportion of CFTR transcripts will lack exon 9.\n\nElucigene CF Poly-T has been developed to provide laboratories with a simple and accurate means of routinely genotyping the most common Poly-T alleles in the general population. The test has been designed to work under the same conditions as Elucigene CF29v2 making it ideal for both clinical and research applications where CF status is also required.\n\nProduct Code: PT003B2", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/Poly-T_PH4-web.pdf", webpageURL: "http://www.elucigene.com/product/cf-poly-t/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/09/PT003BYEN.pdf"))
        
        return ProductLine(named: "Cystic Fibrosis", includeProducts: products)
    }
    
    //  (2) Rapid Aneuploidy Analysis: QST*Rplusv2, QST*R, QST*R-XYv2, QST*R-21
    //           QST*R-18, QST*R-13, QST*R-PL
    
    fileprivate class func RapidAneuploidyAnalysis() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "QST*Rplusv2", description: "For chromosomes 13, 18, 21, X & Y ", imageName: "QSTRplusv2.png", detail: "The Elucigene QST*Rplusv2 assay is a highly multiplexed single-tube test. It comprises a total of 22 markers for chromosomes 13, 18, 21, X and Y and will detect both the most common viable autosomal trisomies and sex chromosome aneuploidies.\n\nProduct Code: AN0PLB2", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/RAA_PH4-web.pdf", webpageURL: "http://www.elucigene.com/product/qstrplusv2/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/09/AN000BYEN.pdf"))
        
        products.append(Product(titled: "QST*R", description: "For chromosomes 13, 18, 21 only", imageName: "QSTR.png", detail: "The Elucigene QST*R assay is a highly multiplexed single tube test comprising a total of 16 markers for the detection of the 3 most common viable autosomal trisomies 13, 18 and 21.\n\nProduct Code: AN003B2", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/RAA_PH4-web.pdf", webpageURL: "http://www.elucigene.com/product/qstr/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/09/AN000BYEN.pdf"))
        
        products.append(Product(titled: "QST*R-XYv2", description: "For sex chromosomes X & Y only", imageName: "QSTR-XYv2.png", detail: "The Elucigene QST*R-XYv2 assay comprises a total of 12 markers for both the X and Y chromosomes. This assay is used for the detection of the most common sex chromosome aneuploidies e.g. Klinefelter syndrome (47, XXY).\n\nProduct Code: AN0XYB2", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/RAA_PH4-web.pdf", webpageURL: "http://www.elucigene.com/product/qstr-xyv2/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/09/AN000BYEN.pdf"))
        
        
        products.append(Product(titled: "QST*R-13", description: "Chromosome 13 reflex test", imageName: "QSTR-13.png", detail: "The Elucigene QST*R-13 assay detects additional chromosome 13 specific markers to supplement QST*R and QST*Rplusv2 if required.\n\nProduct Code: AN013BX", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/RAA_PH4-web.pdf", webpageURL: "http://www.elucigene.com/product/qstr-13/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/09/AN000BYEN.pdf"))
        
        
        products.append(Product(titled: "QST*R-18", description: "Chromosome 18 reflex test", imageName: "QSTR-18.png", detail: "Elucigene QST*R-18 assay detects additional chromosome 18 specific markers to supplement QST*R and QST*Rplusv2 if required.\n\nProduct Code: AN018BX", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/RAA_PH4-web.pdf", webpageURL: "http://www.elucigene.com/product/qstr-18/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/09/AN000BYEN.pdf"))
        
        
        products.append(Product(titled: "QST*R-21", description: "Chromosome 21 reflex test", imageName: "QSTR-21.png", detail: "Elucigene QST*R-21 assay detects additional chromosome 21 specific markers to supplement QST*R and QST*Rplusv2 if required.\n\nProduct Code: AN021BX", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/RAA_PH4-web.pdf", webpageURL: "http://www.elucigene.com/product/qstr-21/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/09/AN000BYEN.pdf"))
        
        products.append(Product(titled: "QST*R-21 Euplex", description: "Chromosome 21 reflex test", imageName: "QSTR-21Euplex.png", detail: "Elucigene QST*R-21 Euplex is a supplemental kit designed to be used in conjunction with QST*R or QST*RplusV2 IVD kits, for the routine quantitative in vitro diagnosis of trisomies associated with Chromosome 21 (Down syndrome). The assay provides a total of 8 chromosome 21 markers with 3 additional markers to QST*RplusV2. \n\nQST*R-21 Euplex is intended to be used on DNA extracted from either amniotic fluid or chorionic villus samples (CVS) taken during amniocentesis. QST*R-21 Euplex is intended to be used in conjunction with other diagnostic procedures to support or discount the proposed clinical diagnosis.\n\nProduct Code: ANE21BX", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/RAA_PH4-web.pdf", webpageURL: "http://www.elucigene.com/product/qstr-21-euplex/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2015/10/ANE21BYEN-0011.pdf"))
        
        
        products.append(Product(titled: "QST*R-PL", description: "For chromosomes 13,15,16,18,21,22,X & Y", imageName: "QSTR-PL.png", detail: "The QST*R-PL Kit is for the routine diagnostic analysis of the six most common autosomal trisomies associated with pregnancy loss: trisomy 13 (Patau syndrome), trisomy 15, trisomy 16, trisomy 18 (Edwards syndrome), trisomy 21 (Down syndrome) and trisomy 22. \n\nQST*R-PL is designed to be used on DNA extracted from the products of conception and fetally derived tissue. The assay has been developed as a single tube reaction. The kit also includes X and Y chromosome markers and the TAF9L marker for the determination of sex status. \n\nThe results obtained from QST*R-PL Kit will determine the aneuploidy status of the fetus and may be useful in the management of the consequences resulting from the spontaneous miscarriage and for modification of risk calculations for future pregnancies.\n\nProduct Code: AN6XYB1", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/Qstr-PL-brochure_PH3-web1.pdf", webpageURL: "http://www.elucigene.com/product/qstr-pl-ivd/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2015/02/AN6XYB1EN-001-QSTR-PL-Instructions-for-Use.pdf"))
       
        
        return ProductLine(named: "Rapid Aneuploidy Analysis", includeProducts: products)
    }
    
//  (3) Reproductive Health: Male Factor Infertility, MFI-Yplus, QST*R-PL
    
    fileprivate class func ReproductiveHealth() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "Male Factor Infertility", description: "X & Y Aneuploidy & Y microdeletion test", imageName: "Male Factor Infertility.png", detail: "The Male Factor Infertility Kit detects both sex chromosome aneuploidy and Y-chromosome microdeletions in a single tube using QF-PCR (Quantitative Fluorescence-Polymerase Chain Reaction) technique using a CE Genetic Analyzer platform. The Male Factor Infertility Kit uses EAA/EMQN prescribed markers and primers to detect Y-chromosome microdeletions affecting the AZFa, AZFb and AZFc regions in accordance with best practice guidelines. \n\nIdentifying the genetic causes of male infertility can result in more effective clinical management of patients. Statistically, 10-15% of couples experience difficulty in conceiving, with male related factors e.g. low sperm count, thought to be an underlying issue in approximately 50% of cases. Although in the majority of incidences the causes of male infertility are unknown, studies have shown that sex chromosome aneuploidy and microdeletions of specific regions of the Y-chromosome can play a role. \n\nKlinefelter syndrome is the most common sex chromosome aneuploidy associated with male infertility. This syndrome has a live birth incidence of between 1:500 and 1:650 males with the most common cause being an additional copy of the X chromosome (47, XXY karyotype).\n\nY-chromosome microdeletions are the next most common genetic cause of male infertility, with microdeletions occurring in three regions (AZFa, AZFb, AZFc) detected in up to 7% of oligospermia (low sperm count) and 13% of nonobstructive azoospermia cases. These microdeletions occur due to homologous recombination of repetitive sequences in these regions and the exact molecular mechanisms and recombination events underlying these changes have been elucidated. These regions are located at chromosome Yq11 and although the AZFa microdeletion region is distinct, there is a significant degree of overlap between the regions affected by AZFb and AZFc microdeletion.\n\nProduct Code: AZFXYB1", literatureURL: "http://www.elucigene.com/wp-content/uploads/2015/07/Male-Factor-Infertility_brochure.pdf", webpageURL: "http://www.elucigene.com/product/male-factor-infertility-kit/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2015/07/ANXYAZFEN.pdf"))
        
        products.append(Product(titled: "MFI-Yplus", description: "Y microdeltion reflex test", imageName: "MFI-Yplus.png", detail: "The MFI-Yplus Kit is a single tube extension assay used in conjunction with the Male Factor Infertility Kit which contains 11 additional markers for characterisation of Y-chromosome microdeletions in line with published guidelines. The MFI Y-plus Kit runs on the same CE Genetic Analyzer platform as the Male Factor Infertility Kit using the same running conditions.\n\nProduct Code: AZFPLBX", literatureURL: "http://www.elucigene.com/wp-content/uploads/2015/07/Male-Factor-Infertility_brochure.pdf", webpageURL: "http://www.elucigene.com/product/mfi-yplus/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2015/07/ANXYAZFEN.pdf"))
        
        products.append(Product(titled: "QST*R-PL", description: "For chromosomes 13,15,16,18,21,22,X & Y", imageName: "QSTR-PL.png", detail: "The QST*R-PL Kit is for the routine diagnostic analysis of the six most common autosomal trisomies associated with pregnancy loss: trisomy 13 (Patau syndrome), trisomy 15, trisomy 16, trisomy 18 (Edwards syndrome), trisomy 21 (Down syndrome) and trisomy 22. \n\nQST*R-PL is designed to be used on DNA extracted from the products of conception and fetally derived tissue. The assay has been developed as a single tube reaction. The kit also includes X and Y chromosome markers and the TAF9L marker for the determination of sex status. \n\nThe results obtained from QST*R-PL Kit will determine the aneuploidy status of the fetus and may be useful in the management of the consequences resulting from the spontaneous miscarriage and for modification of risk calculations for future pregnancies.\n\nProduct Code: AN6XYB1", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/Qstr-PL-brochure_PH3-web1.pdf", webpageURL: "http://www.elucigene.com/product/qstr-pl-ivd/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2015/02/AN6XYB1EN-001-QSTR-PL-Instructions-for-Use.pdf"))
        
        return ProductLine(named: "Reproductive Health", includeProducts: products)
    }
    
    //  (4) Genetic Disease Diagnosis: TRP-F, TRP-Fplus, TRP, AAT, Ashplex1, Ashplex 2, FastFrax
    
    fileprivate class func GeneticDiseaseDiagnosis() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "TRP-F", description: "Thrombosis Risk Panel Fluorescent test", imageName: "TRP-F.png", detail: "Elucigene TRP-F (Thrombosis Risk Panel-Fluorescent) product is a fluorescent kit that provides laboratories with a simple and accurate means of routinely testing for the three most relevant mutations implicated in the risk of developing venous thromboembolism. The Elucigene TRP-F is provided as a single mix that only requires the addition of patient DNA for rapid analysis on the Applied Biosystems 3130 and 3500 series Genetic Analyzers.\n\nProduct Code: THF03B2", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/TRP_PH4-web.pdf", webpageURL: "http://www.elucigene.com/product/trp-f/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/09/THF03BTEN.pdf"))
        
        
        
        
        products.append(Product(titled: "TRP-Fplus", description: "Thrombosis Risk Panel with expanded MTHFR testing", imageName: "TRP-Fplus.png", detail: "The Elucigene TRP-Fplus is an evolution of the TRP-F assay offering the additonal MTHFR 1298 A>C mutation screen all provided as a single mix that only requires the addition of patient DNA for rapid analysis on the Applied Biosystems 3130 and 3500 series Genetic Analyzers.\n\nProduct Code: THF04B2", literatureURL: "", webpageURL: "http://www.elucigene.com/product/elucigenetrpfplus/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2015/10/THF04BY-EN.pdf"))
        
        
        
        products.append(Product(titled: "TRP", description: "Thrombosis Risk Panel gel based test", imageName: "TRP.png", detail: "Elucigene TRP (Thrombosis Risk Panel) is a gel based assay that provides laboratories with a simple and accurate means of routinely testing for the three most relevant mutations implicated in the risk of developing venous thromboembolism, factor V Leiden (R506Q), Prothrombin 20210A (factor II) and MTHFR (methylenetetrahyrofolate reductase) C677T.\n\nProduct Code: TH003B2", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/TRP_PH4-web.pdf", webpageURL: "http://www.elucigene.com/product/trp/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/09/TH003BYEN.pdf"))
        
        products.append(Product(titled: "AAT", description: "Alpha-1-Antitrypsin deficiency test", imageName: "AAT.png", detail: "The Elucigene AAT assay provides laboratories with a simple and robust gel based test for the routine detection of the S and Z variants of the AAT gene that are associated with AAT deficiency.\n\nProduct Code: AA002B2", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/AAT.pdf", webpageURL: "http://www.elucigene.com/product/aat/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/09/AAT002BYEN.pdf"))
        
        products.append(Product(titled: "Ashplex 1", description: "Ashkenazi 15 mutation test", imageName: "Ashplex 1.png", detail: "Elucigene Ashplex gel based (ARMS) assays have been developed for the rapid diagnosis of 15 mutations covering Tay-Sachs Disease, Familial Dysautonomia, Canavan Disease, Fanconi Anemia, Mucolipidosis IV, Niemann-Pick Disease, Glycogen Storage Disease and Blooms Syndrome and can be used in conjuction with Elucigene’s range of Cystic Fibrosis products to enable multiple detection of highly relevant mutations in the Ashkenazi population.\n\nAshplex 1 is used for the simultaneous in vitro qualitative detection of mutations in the Tay Sachs Disease, Canavan Disease, Familial Dysautonomia and Fanconi Anaemia genes\n\nProduct Code: AS008B2", literatureURL: "", webpageURL: "http://www.elucigene.com/product/ashplex-1/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/11/AS008BYEN.pdf"))
        
        products.append(Product(titled: "Ashplex 2", description: "Ashkenazi 15 mutation test", imageName: "Ashplex 2.png", detail: "Elucigene Ashplex gel based (ARMS) assays have been developed for the rapid diagnosis of 15 mutations covering Tay-Sachs Disease, Familial Dysautonomia, Canavan Disease, Fanconi Anemia, Mucolipidosis IV, Niemann-Pick Disease, Glycogen Storage Disease and Blooms Syndrome and can be used in conjuction with Elucigene’s range of Cystic Fibrosis products to enable multiple detection of highly relevant mutations in the Ashkenazi population.\n\nAshplex 2 is used for the simultaneous in vitro qualitative detection of mutations in the Niemann Pick Disease, Blooms Syndrome, Mucolipidosis IV and Glycogen Storage Disease genes\n\nProduct Code: SS007B2", literatureURL: "", webpageURL: "http://www.elucigene.com/product/ashplex-2/", instructionsURL: "http://www.elucigene.com/wp-content/uploads/2014/11/SS007BYEN.pdf"))
        
        
        
        products.append(Product(titled: "FastFrax", description: "A true screening kit for rapid detection of FMR1 CGG expansions.", imageName: "FastFrax2.png", detail: "The Elucigene Diagnostics FastFraX™ FMR1 Identification Kit is a first-line screening kit for the quick and robust detection of expansions in the FMR1 gene to aid in the diagnosis of fragile X-associated disorders.\n\n- Distinguishes normal from carriers and affected individuals\n\n- Triplet primed PCR method resolves female heterozygosity\n\n- Melt curve analysis eliminates post-PCR processing and reduces handling time\n\n- Compatible with Qiagen RGQ (HRM), Roche LC480 and ABI 7500 Fast real-time PCR instruments\n\nProduct Code: F1-100-V (UK sale only)", literatureURL: "http://www.elucigene.com/wp-content/uploads/2014/09/FMR1-Identification-Kit_PH3-web.pdf", webpageURL: "http://www.elucigene.com/product/fastfrax/", instructionsURL: ""))
        
        return ProductLine(named: "Genetic Disease Diagnosis", includeProducts: products)
    }
    
   
}
