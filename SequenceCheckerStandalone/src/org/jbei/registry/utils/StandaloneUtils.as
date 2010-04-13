package org.jbei.registry.utils
{
	import mx.collections.ArrayCollection;
	
	import org.jbei.registry.models.Entry;
	import org.jbei.registry.models.Feature;
	import org.jbei.registry.models.Link;
	import org.jbei.registry.models.Name;
	import org.jbei.registry.models.PartNumber;
	import org.jbei.registry.models.Plasmid;
	import org.jbei.registry.models.Sequence;
	import org.jbei.registry.models.SequenceFeature;
	import org.jbei.registry.models.TraceSequence;
	import org.jbei.registry.models.TraceSequenceAlignment;
	
	public class StandaloneUtils
	{
		public static function standaloneTraces():ArrayCollection /* of TraceSequence */
		{
			var traceSequences:ArrayCollection = new ArrayCollection();
			traceSequences.addItem(standaloneTraceSequence1());
			traceSequences.addItem(standaloneTraceSequence2());
			traceSequences.addItem(standaloneTraceSequence3());
			traceSequences.addItem(standaloneTraceSequence4());
			
			return traceSequences;
		}
		
		public static function standaloneTraceSequence1():TraceSequence
		{
			var  traceSequenceAlignment:TraceSequenceAlignment = new TraceSequenceAlignment(2192, 1, 19, 1222, 6, 1197, "tgacattaacctataaaaataggcgtatcacgaggcagaatttcagataaaaaaaatccttagctttcgctaaggatgatttctggaattcaaaagatctagagaatataaaaagccagattattaatccggcttttttattatttggatctggtagacgtctagtaactggatctccgtattctttacactttatgcttccggctcgtatgttgtgtcgaccgagcggataacaattggatctattaaagaggagaaaggatctatgcgtaaaggagaagaacttttcactggagttgtcccaattcttgttgaattagatggtgatgttaatgggcacaaattttctgtcagtggagagggtgaaggtgatgcaacatacggaaaacttacccttaaatttatttgcactactggaaaactacctgttccatggccaacacttgtcactactttcggttatggtgttcaatgctttgcgagatacccagatcatatgaaacagcatgactttttcaagagtgccatgcccgaaggttatgtacaggaaagaactatatttttcaaagatgacgggaactacaagacacgtgctgaagtcaagtttgaaggtgatacccttgttaatagaatcgagttaaaaggtattgattttaaagaagatggaaacattcttggacacaaattggaatacaactataactcacacaatgtatacatcatggcagacaaacaaaagaatggaatcaaagttaacttcaaaattagacacaacattgaagatggaagcgttcaactagcagaccattatcaacaaaatactccaattggcgatggccctgtccttttaccagacaaccattacctgtccacacaatctgccctttcgaaagatcccaacgaaaagagagaccacatggtccttcttgagtttgtaaccgctgctgggattacacatggcatggatgaactatacaaataataaggatctagagaatataaaaagccagattattaatccggc-ttttttattatttggatcttccctatcagtgatagagattgacatccctatcagtgatagagatactgagcacggatctattaaagaggagaaaggatctatgcagggttctgtgacagagtttctaaaaccgcgcctggttgatatcgagcaagtgagttcgacg-cacgccaaggtgac", "tgac-ttaacctataaaaataggcgtatcacgaggcagaatttcagatnnnnnnnntccttagctttcgctaaggatgatttctggaattcaaaagatctagagaatataaaaagccagattattaatccggcttttttattatttggatctggtagacgtctagtaactggatctccgtattctttacactttatgcttccggctcgtatgttgtgtcgaccgagcggataacaattggatctattaaagaggagaaaggatctatgcgtaaaggagaagaacttttcactggagttgtcccaattcttgttgaattagatggtgatgttaatgggcacaaattttctgtcagtggagagggtgaaggtgatgcaacatacggaaaacttacccttaaatttatttgcactactggaaaactacctgttccatggccaacacttgtcactactttcggttatggtgttcaatgctttgcgagatacccagatcatatgaaacagcatgactttttcaagagtgccatgcccgaaggttatgtacaggaaagaactatatttttcaaagatgacgggaactacaagacacgtgctgaagtcaagtttgaaggtgatacccttgttaatagaatcgagttaaaaggtattgattttaaagaagatggaaacattcttggacacaaattggaatacaactataactcacacaatgtatacatcatggcagacaaacaaaagaatggaatcaaagttaacttcaaaattagacacaacattgaagatggaagcgttcaactagcagaccattatcaacaaaatactccaattggcgatggccctgtccttttaccagacaaccattacctgtccacacaatctgccctttcgaaagatcccaacgaaaagagagaccacatggtccttcttgagtttgtaaccgctgctgggattacacatggcatggatgaactatacaaataataaggatctagagaatataaaaagccagattatt-atccggcnnnnnnnattatttggatcttccctatcagtgatagagattgacatccctatcagtgatagagatactgagcac-gatcta-taaagaggag-aatgatctatgcag---tctgtgac-gag-ttctaaa--cgcg-ctgatgaatatcgagc-agtggagtcgacgccacgccaaggtgac");
			
			var traceSequence:TraceSequence = new TraceSequence("WH_12-14F__2009-01-30_A07_063.ab1", "zdmytriv@lbl.gov", "caaactgacttaacctataaaaataggcgtatcacgaggcagaatttcagataaaaaaaatccttagctttcgctaaggatgatttctggaattcaaaagatctagagaatataaaaagccagattattaatccggcttttttattatttggatctggtagacgtctagtaactggatctccgtattctttacactttatgcttccggctcgtatgttgtgtcgaccgagcggataacaattggatctattaaagaggagaaaggatctatgcgtaaaggagaagaacttttcactggagttgtcccaattcttgttgaattagatggtgatgttaatgggcacaaattttctgtcagtggagagggtgaaggtgatgcaacatacggaaaacttacccttaaatttatttgcactactggaaaactacctgttccatggccaacacttgtcactactttcggttatggtgttcaatgctttgcgagatacccagatcatatgaaacagcatgactttttcaagagtgccatgcccgaaggttatgtacaggaaagaactatatttttcaaagatgacgggaactacaagacacgtgctgaagtcaagtttgaaggtgatacccttgttaatagaatcgagttaaaaggtattgattttaaagaagatggaaacattcttggacacaaattggaatacaactataactcacacaatgtatacatcatggcagacaaacaaaagaatggaatcaaagttaacttcaaaattagacacaacattgaagatggaagcgttcaactagcagaccattatcaacaaaatactccaattggcgatggccctgtccttttaccagacaaccattacctgtccacacaatctgccctttcgaaagatcccaacgaaaagagagaccacatggtccttcttgagtttgtaaccgctgctgggattacacatggcatggatgaactatacaaataataaggatctagagaatataaaaagccagattattatccggctttttttattatttggatcttccctatcagtgatagagattgacatccctatcagtgatagagatactgagcacgatctataaagaggagaatgatctatgcagtctgtgacgagttctaaacgcgctgatgaatatcgagcagtggagtcgacgccacgccaaggtgac", traceSequenceAlignment);
			
			return traceSequence;
		}
		
		public static function standaloneTraceSequence2():TraceSequence
		{
			var  traceSequenceAlignment:TraceSequenceAlignment = new TraceSequenceAlignment(2206, 1, 932, 2138, 13, 1200, "cacatggtccttcttgagtttgtaaccgctgctgggattacacatggcatggatgaactatacaaataataaggatctagagaatataaaaagccagattattaatccggcttttttattatttggatcttccctatcagtgatagagattgacatccctatcagtgatagagatactgagcacggatctattaaagaggagaaaggatctatgcagggttctgtgacagagtttctaaaaccgcgcctggttgatatcgagcaagtgagttcgacgcacgccaaggtgacccttgagcctttagagcgtggctttggccatactctgggtaacgcactgcgccgtattctgctctcatcgatgccgggttgcgcggtgaccgaggttgagattgatggtgtactacatgagtacagcaccaaagaaggcgttcaggaagatatcctggaaatcctgctcaacctgaaagggctggcggtgagagttcagggcaaagatgaagttattcttaccttgaataaatctggcattggccctgtgactgcagccgatatcacccacgacggtgatgtcgaaatcgtcaagccgcagcacgtgatctgccacctgaccgatgagaacgcgtctattagcatgcgtatcaaagttcagcgcggtcgtggttatgtgccggcttctacccgtattcattcggaagaagatgagcgcccaatcggccgtctgctggtcgacgcatgctacagccctgtggagcgtattgcctacaatgttgaagcagcgcgtgtagaacagcgtaccgacctggacaagctggtcatcgaaatggaaaccaacggcacaatcgatcctgaagaggcgattcgtcgtgcggcaaccattctggctgaacaactggaagctttcgttgacttacgtgatgtacgtcagcctgaagtgaaagaagagaaaccagagggatctgccccgcgagtccggaccggatctctggaaccaggatctaaaccgtacaaatgtccggaatgtggtaaatccttctccactcatctggatctgattcgtcatcaacgtactcacactggatctaaaccgtacaaatgtccggaatgtggtaaatccttctcccaatcttcttctctggttcgtcatcaacgtact-cacactggatctaaaccgtacaaatgtccggaatgtggtaaatccttctcc", "cacatggtccttcttgagtttgtaaccgctgctgggattacacatggcatggatgaactatacaaataataaggatctagagaatataaaaagccagattattaatccggcttttttattatttggatcttccctatcagtgatagagattgacatccctatcagtgatagagatactgagcacggatctattaaagaggagaaaggatctatgcagggttctgtgacagagtttctaaaaccgcgcctggttgatatcgagcaagtgagttcgacgcacgccaaggtgacccttgagcctttagagcgtggctttggccatactctgggtaacgcactgcgccgtattctgctctcatcgatgccgggttgcgcggtgaccgaggttgagattgatggtgtactacatgagtacagcaccaaagaaggcgttcaggaagatatcctggaaatcctgctcaacctgaaagggctggcggtgagagttcagggcaaagatgaagttattcttaccttgaataaatctggcattggccctgtgactgcagccgatatcacccacgacggtgatgtcgaaatcgtcaagccgcagcacgtgatctgccacctgaccgatgagaacgcgtctattagcatgcgtatcaaagttcagcgcggtcgtggttatgtgccggcttctacccgtattcattcggaagaagatgagcgcccaatcggccgtctgctggtcgacgcatgctacagccctgtggagcgtattgcctacaatgttgaagcagcgcgtgtagaacagcgtaccgacctggacaagctggtcatcgaaatggaaaccaacggcacaatcgatcctgaagaggcgattcgtcgtgcggcaaccattctggctgaacaactggaagctttcgttgacttacgtgatgtacgtcagcctgaagtgaaagaagagaaaccagagggatctgccccgcgagtccggaccggatctctgg-accaggatct-aaccgtac-aatgtccggaatgt-gtaaatccttct-cactcatctggatctga-tcgtcatc-acgtactcacactggatctaaa-cgtacaaatgtccg--atgtgttaa--tcgtctcc--atcttcttctctgg-tcgtcatc-acgtactccacact-gatct-aacggtacaaatgttcggaa-gtggt-aatctctctcc");
			
			var traceSequence:TraceSequence = new TraceSequence("WH_12-14GF__2009-01-30_C07_059.ab1", "zdmytriv@lbl.gov", "tattcctttttacacatggtccttcttgagtttgtaaccgctgctgggattacacatggcatggatgaactatacaaataataaggatctagagaatataaaaagccagattattaatccggcttttttattatttggatcttccctatcagtgatagagattgacatccctatcagtgatagagatactgagcacggatctattaaagaggagaaaggatctatgcagggttctgtgacagagtttctaaaaccgcgcctggttgatatcgagcaagtgagttcgacgcacgccaaggtgacccttgagcctttagagcgtggctttggccatactctgggtaacgcactgcgccgtattctgctctcatcgatgccgggttgcgcggtgaccgaggttgagattgatggtgtactacatgagtacagcaccaaagaaggcgttcaggaagatatcctggaaatcctgctcaacctgaaagggctggcggtgagagttcagggcaaagatgaagttattcttaccttgaataaatctggcattggccctgtgactgcagccgatatcacccacgacggtgatgtcgaaatcgtcaagccgcagcacgtgatctgccacctgaccgatgagaacgcgtctattagcatgcgtatcaaagttcagcgcggtcgtggttatgtgccggcttctacccgtattcattcggaagaagatgagcgcccaatcggccgtctgctggtcgacgcatgctacagccctgtggagcgtattgcctacaatgttgaagcagcgcgtgtagaacagcgtaccgacctggacaagctggtcatcgaaatggaaaccaacggcacaatcgatcctgaagaggcgattcgtcgtgcggcaaccattctggctgaacaactggaagctttcgttgacttacgtgatgtacgtcagcctgaagtgaaagaagagaaaccagagggatctgccccgcgagtccggaccggatctctggaccaggatctaaccgtacaatgtccggaatgtgtaaatccttctcactcatctggatctgatcgtcatcacgtactcacactggatctaaacgtacaaatgtccgatgtgttaatcgtctccatcttcttctctggtcgtcatcacgtactccacactgatctaacggtacaaatgttcggaagtggtaatctctctccga", traceSequenceAlignment);
			
			return traceSequence;
		}
		
		public static function standaloneTraceSequence3():TraceSequence
		{
			var  traceSequenceAlignment:TraceSequenceAlignment = new TraceSequenceAlignment(2218, -1, 2633, 1454, 14, 1183, "cgaacgaccgagcgcagcgagtcagtgagcgaggaagcctgcataacgcgaagtaatcttttcggttttaaagaaaaagggcagggtggtgacaccttgcccgtttttttgccggactcgagtcaggatccaaataataaaaaagccggattaataatctggctttttatattctctagatccttattaagaggttttagatccagtgtgagtacgttgatgacgtaccagatgaccagaagtggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgtgcacgcagatgagccagttgggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgtgcacgacaagtacgacgagaggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgttcagtcagggtagagttttgggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgacgaaccagagaagaagattgggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgacgaatcagatccagatgagtggagaaggatttaccacattccggacatttgtacggtttagatcctggttccagagatccggtccggactcgcggggcagatccctctggtttctcttctttcacttcaggctgacgtacatcacgtaagtcaacgaaagcttccagttgttcagccagaatggttgccgcacgacgaatcgcctcttcaggatcgattgtgccgttggtttccatttcgatgaccagcttgtccaggtcggtacgctgttctacacgcgctgcttcaacattgtaggcaatacgctccacagggctgtagcatgcgtcgaccagcagacggccgattgggcgctcatcttcttccgaatgaatacgggtagaagccggcacataaccacgaccgcgctgaactttgatacgcatgctaatagacgcgttctcatcggtcaggtggcagatcacgtgctgcggcttgacgatttcgacatcaccgtcgt-gggtgatatcggctgcagt-cacagggccaatgccagat", "cggacgaccgagcgcagcgagtcagtgagcgaggaagcctgcataacgcgaagtaatcttttcggttttaaagaaaaagggcagggtggtgacaccttgccc--ttttttgccggactcgagtcaggatccaaataataaaaaagccggattaataatctggctttttatattctctagatccttattaagaggttttagatccagtgtgagtacgttgatgacgtaccagatgaccagaagtggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgtgcacgcagatgagccagttgggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgtgcacgacaagtacgacgagaggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgttcagtcagggtagagttttgggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgacgaaccagagaagaagattgggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgacgaatcagatccagatgagtggagaaggatttaccacattccggacatttgtacggtttagatcctggttccagagatccggtccggactcgcggggcagatccctctggtttctcttctttcacttcaggctgacgtacatcacgtaagtcaacgaaagcttccagttgttcagccagaatggttgccgcacgacgaatcgcctcttcacgatcgattgtgccgttggtttccatttcgatgaccagcttgtccaggtcggtacgctgttctacacgcgctgcttcaacattgtaggcaatacgctccaca-ggctgtagcatgcgtcgaccagcagacggccgatt-ggcgctcatcttctt-cgaatg-atacgggtagaag-cggcacataaccacgaccgcgctg-actttgatacgcatgctaatagacgcg-tctcatcggtcaggtggcagatcacgtgctgcg--ctgacgatttcgacatca-cgtcgtggggtgatatcggctgcagtccacaggccaattgccagat");
			
			var traceSequence:TraceSequence = new TraceSequence("WH_12-14R__2009-01-30_B07_061.ab1", "zdmytriv@lbl.gov", "ttgccttgcggcgcggacgaccgagcgcagcgagtcagtgagcgaggaagcctgcataacgcgaagtaatcttttcggttttaaagaaaaagggcagggtggtgacaccttgcccttttttgccggactcgagtcaggatccaaataataaaaaagccggattaataatctggctttttatattctctagatccttattaagaggttttagatccagtgtgagtacgttgatgacgtaccagatgaccagaagtggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgtgcacgcagatgagccagttgggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgtgcacgacaagtacgacgagaggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgttcagtcagggtagagttttgggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgacgaaccagagaagaagattgggagaaggatttaccacattccggacatttgtacggtttagatccagtgtgagtacgttgatgacgaatcagatccagatgagtggagaaggatttaccacattccggacatttgtacggtttagatcctggttccagagatccggtccggactcgcggggcagatccctctggtttctcttctttcacttcaggctgacgtacatcacgtaagtcaacgaaagcttccagttgttcagccagaatggttgccgcacgacgaatcgcctcttcacgatcgattgtgccgttggtttccatttcgatgaccagcttgtccaggtcggtacgctgttctacacgcgctgcttcaacattgtaggcaatacgctccacaggctgtagcatgcgtcgaccagcagacggccgattggcgctcatcttcttcgaatgatacgggtagaagcggcacataaccacgaccgcgctgactttgatacgcatgctaatagacgcgtctcatcggtcaggtggcagatcacgtgctgcgctgacgatttcgacatcacgtcgtggggtgatatcggctgcagtccacaggccaattgccagatatcg", traceSequenceAlignment);
			
			return traceSequence;
		}
		
		public static function standaloneTraceSequence4():TraceSequence
		{
			var  traceSequenceAlignment:TraceSequenceAlignment = new TraceSequenceAlignment(22, 1, 4504, 4514, 883, 893, "ccccgaaaagt", "ccccgaaaagt");
			
			var traceSequence:TraceSequence = new TraceSequence("1.fasta", "zdmytriv@lbl.gov", "aggtaataacaatctgcagagtgtgtcacaagtgttttgacagctgcttgttctggtcttcgcactctttccttttccgtcggttgggtttggtacttcgatcattggccgctcattgccatagaaaaaagattacccaatgcccgttgctcattggggatcgccgattactgtaataatgtttaatagtctactttagttttagtcgtggtatactgctatccataactactatgcttccgttagggtctcgtatttgtacccgctatacgtaggacgcaaatttattattatttacagagtgaaaataacacgtctctttccttacgatgaatcgctcgaattataatcagaattacaaattggtagtcgtcggaggcggtggtgttgggaagtcggcaatcactatacaattcatacagaaatactttgtgacagactatgatccaacaattgaagattcatacacaaaacaatgcgtagttgatgatgttccagcaaaattagatattttggatactgctggacaagaagaattcagtgccatgagagaacaatatatgagatctggtgaagggtttttgttagtgttttctgtagctgataaaactagttttaatgagatggaaaaatttcacagacaaatacttagagttaaagatagggacgaatttcctatgttgatggttggaaacaaggcagatttaagtagtcaaagaatggtttctatacaagatgcgcaaagtatggccatgcaactgaagataccttacatagaatgtagtgcaaaagcagggatgaacattgatcaatcattccatgaacttgttcgaattgtaagaaggtttcaattatctgaaagaccaccaattaaatctacgcccccgaaaagttcaaaaaggtgttccatactttagcaatttatgctggctaaatacaatgtgggtatgtttacataccagcccgctcttaactaaatcgttgtgttcccattattgtc", traceSequenceAlignment);
			
			return traceSequence;
		}
		
		public static function standaloneEntry():Entry
		{
			var plasmid:Plasmid = new Plasmid();
			plasmid.alias = "Standalone Alias";
			plasmid.backbone = "Standalone BB";
			plasmid.circular = true;
			plasmid.creationTime = new Date();
			plasmid.creator = "Zinovii Dmytriv";
			plasmid.creatorEmail = "zdmytriv@lbl.gov";
			plasmid.keywords = null;
			plasmid.links = new ArrayCollection();
			plasmid.links.addItem(new Link("http://google.com", "JBEI:Standalone"));
			plasmid.longDescription = "Standalone part long description";
			plasmid.modificationTime = null;
			plasmid.names = new ArrayCollection();
			plasmid.names.addItem(new Name("pNJH-0006"));
			plasmid.originOfReplication = "Standalone OOR";
			plasmid.owner = "Zinovii Dmytriv";
			plasmid.ownerEmail = "zdmytriv@lbl.gov";
			plasmid.partNumbers = new ArrayCollection();
			plasmid.partNumbers.addItem(new PartNumber("JBz_000001"));
			plasmid.promoters = "Promoter1, Promoter2";
			plasmid.recordId = "12345678-12345678-12345678-123456781111";
			plasmid.recordType = "plasmid";
			plasmid.references = "Standalone references";
			plasmid.shortDescription = "Short Description";
			plasmid.status = "public";
			plasmid.versionId = "12345678-12345678-12345678-123456781111";
			
			return plasmid;
		}
		
		public static function standaloneSequence():Sequence {
			var sequence:Sequence = new Sequence();
			
			sequence.fwdHash = "";
			sequence.revHash = "";
			sequence.sequence = "aagaaaccattattatcatgacattaacctataaaaataggcgtatcacgaggcagaatttcagataaaaaaaatccttagctttcgctaaggatgatttctggaattcaaaagatctagagaatataaaaagccagattattaatccggcttttttattatttggatctggtagacgtctagtaactggatctccgtattctttacactttatgcttccggctcgtatgttgtgtcgaccgagcggataacaattggatctattaaagaggagaaaggatctatgcgtaaaggagaagaacttttcactggagttgtcccaattcttgttgaattagatggtgatgttaatgggcacaaattttctgtcagtggagagggtgaaggtgatgcaacatacggaaaacttacccttaaatttatttgcactactggaaaactacctgttccatggccaacacttgtcactactttcggttatggtgttcaatgctttgcgagatacccagatcatatgaaacagcatgactttttcaagagtgccatgcccgaaggttatgtacaggaaagaactatatttttcaaagatgacgggaactacaagacacgtgctgaagtcaagtttgaaggtgatacccttgttaatagaatcgagttaaaaggtattgattttaaagaagatggaaacattcttggacacaaattggaatacaactataactcacacaatgtatacatcatggcagacaaacaaaagaatggaatcaaagttaacttcaaaattagacacaacattgaagatggaagcgttcaactagcagaccattatcaacaaaatactccaattggcgatggccctgtccttttaccagacaaccattacctgtccacacaatctgccctttcgaaagatcccaacgaaaagagagaccacatggtccttcttgagtttgtaaccgctgctgggattacacatggcatggatgaactatacaaataataaggatctagagaatataaaaagccagattattaatccggcttttttattatttggatcttccctatcagtgatagagattgacatccctatcagtgatagagatactgagcacggatctattaaagaggagaaaggatctatgcagggttctgtgacagagtttctaaaaccgcgcctggttgatatcgagcaagtgagttcgacgcacgccaaggtgacccttgagcctttagagcgtggctttggccatactctgggtaacgcactgcgccgtattctgctctcatcgatgccgggttgcgcggtgaccgaggttgagattgatggtgtactacatgagtacagcaccaaagaaggcgttcaggaagatatcctggaaatcctgctcaacctgaaagggctggcggtgagagttcagggcaaagatgaagttattcttaccttgaataaatctggcattggccctgtgactgcagccgatatcacccacgacggtgatgtcgaaatcgtcaagccgcagcacgtgatctgccacctgaccgatgagaacgcgtctattagcatgcgtatcaaagttcagcgcggtcgtggttatgtgccggcttctacccgtattcattcggaagaagatgagcgcccaatcggccgtctgctggtcgacgcatgctacagccctgtggagcgtattgcctacaatgttgaagcagcgcgtgtagaacagcgtaccgacctggacaagctggtcatcgaaatggaaaccaacggcacaatcgatcctgaagaggcgattcgtcgtgcggcaaccattctggctgaacaactggaagctttcgttgacttacgtgatgtacgtcagcctgaagtgaaagaagagaaaccagagggatctgccccgcgagtccggaccggatctctggaaccaggatctaaaccgtacaaatgtccggaatgtggtaaatccttctccactcatctggatctgattcgtcatcaacgtactcacactggatctaaaccgtacaaatgtccggaatgtggtaaatccttctcccaatcttcttctctggttcgtcatcaacgtactcacactggatctaaaccgtacaaatgtccggaatgtggtaaatccttctcccaaaactctaccctgactgaacatcaacgtactcacactggatctaaaccgtacaaatgtccggaatgtggtaaatccttctcctctcgtcgtacttgtcgtgcacatcaacgtactcacactggatctaaaccgtacaaatgtccggaatgtggtaaatccttctcccaactggctcatctgcgtgcacatcaacgtactcacactggatctaaaccgtacaaatgtccggaatgtggtaaatccttctccacttctggtcatctggtacgtcatcaacgtactcacactggatctaaaacctcttaataaggatctagagaatataaaaagccagattattaatccggcttttttattatttggatcctgactcgagtccggcaaaaaaacgggcaaggtgtcaccaccctgccctttttctttaaaaccgaaaagattacttcgcgttatgcaggcttcctcgctcactgactcgctgcgctcggtcgttcggctgcggcgagcggtatcagctcactcaaaggcggtaatacggttatccacagaatcaggggataacgcaggaaagaacatgtgagcaaaaggccagcaaaaggccaggaaccgtaaaaaggccgcgttgctggcgtttttccataggctccgcccccctgacgagcatcacaaaaatcgacgctcaagtcagaggtggcgaaacccgacaggactataaagataccaggcgtttccccctggaagctccctcgtgcgctctcctgttccgaccctgccgcttaccggatacctgtccgcctttctcccttcgggaagcgtggcgctttctcatagctcacgctgtaggtatctcagttcggtgtaggtcgttcgctccaagctgggctgtgtgcacgaaccccccgttcagcccgaccgctgcgccttatccggtaactatcgtcttgagtccaacccggtaagacacgacttatcgccactggcagcagccactggtaacaggattagcagagcgaggtatgtaggcggtgctacagagttcttgaagtggtggcctaactacggctacactagaaggacagtatttggtatctgcgctctgctgaagccagttaccttcggaaaaagagttggtagctcttgatccggcaaacaaaccaccgctggtagcggtggtttttttgtttgcaagcagcagattacgcgcagaaaaaaaggatctcaagaagatcctttgatcttttctacggggtctgacgctcagtggaacgaaaactcacgttaagggattttggtcatgagattatcaaaaaggatcttcacctagatccttttaaattaaaaatgaagttttaaatcaatctaaagtatatatgagtaaacttggtctgacagttaccaatgcttaatcagtgaggcacctatctcagcgatctgtctatttcgttcatccatagttgcctgactccccgtcgtgtagataactacgatacgggagggcttaccatctggccccagtgctgcaatgataccgcgagacccacgctcaccggctccagatttatcagcaataaaccagccagccggaagggccgagcgcagaagtggtcctgcaactttatccgcctccatccagtctattaattgttgccgggaagctagagtaagtagttcgccagttaatagtttgcgcaacgttgttgccattgctacaggcatcgtggtgtcacgctcgtcgtttggtatggcttcattcagctccggttcccaacgatcaaggcgagttacatgatcccccatgttgtgcaaaaaagcggttagctccttcggtcctccgatcgttgtcagaagtaagttggccgcagtgttatcactcatggttatggcagcactgcataattctcttactgtcatgccatccgtaagatgcttttctgtgactggtgagtactcaaccaagtcattctgagaatagtgtatgcggcgaccgagttgctcttgcccggcgtcaatacgggataataccgcgccacatagcagaactttaaaagtgctcatcattggaaaacgttcttcggggcgaaaactctcaaggatcttaccgctgttgagatccagttcgatgtaacccactcgtgcacccaactgatcttcagcatcttttactttcaccagcgtttctgggtgagcaaaaacaggaaggcaaaatgccgcaaaaaagggaataagggcgacacggaaatgttgaatactcatactcttcctttttcaatattattgaagcatttatcagggttattgtctcatgagcggatacatatttgaatgtatttagaaaaataaacaaataggggttccgcgcacatttccccgaaaagtgccacctgacgtct";
			sequence.sequenceUser = "";
			sequence.sequenceFeatures = new ArrayCollection();
			sequence.sequenceFeatures.addItem(new SequenceFeature(1500, 1575, 1, new Feature("lacUV5 promoter", null, null, 0, "promoter")));
			sequence.sequenceFeatures.addItem(new SequenceFeature(1516, 1579, 1, new Feature("lac operator", null, null, 0, "misc_binding")));
			sequence.sequenceFeatures.addItem(new SequenceFeature(1595, 1614, 1, new Feature("RBS", null, null, 0, "RBS")));
			sequence.sequenceFeatures.addItem(new SequenceFeature(1615, 3300, 1, new Feature("fadD", null, null, 0, "CDS")));
			sequence.sequenceFeatures.addItem(new SequenceFeature(3321, 4097, 1, new Feature("atfA", null, null, 0, "CDS")));
			sequence.sequenceFeatures.addItem(new SequenceFeature(3443, 3443, 1, new Feature("silentMut-removeBglII", null, null, 0, "misc_feature")));
			sequence.sequenceFeatures.addItem(new SequenceFeature(49, 1131, -1, new Feature("lacI", null, null, 0, "CDS")));
			
			return sequence;
		}
	}
}
