package org.jbei.registry.utils
{
    import mx.utils.StringUtil;
    
    import org.jbei.registry.models.AssemblyItem;
    import org.jbei.registry.models.AssemblyProvider;
    import org.jbei.registry.models.Bin;
    import org.jbei.registry.models.Permutation;
    import org.jbei.registry.models.PermutationSet;

    /**
     * @author Zinovii Dmytriv
     */
    public class AssemblyHelper
    {
        private static var assemblyProvider:AssemblyProvider;
        private static var permutationSet:PermutationSet;
        
        // Public Methods
        public static function buildPermutationSet(assemblyProvider:AssemblyProvider):PermutationSet
        {
            AssemblyHelper.assemblyProvider = assemblyProvider;
            AssemblyHelper.permutationSet = new PermutationSet();
            
            if(assemblyProvider != null && assemblyProvider.bins != null || assemblyProvider.bins.length > 0) {
                assemble(0, new Permutation());
            }
            
            return permutationSet;
        }
        
        // Private Methods
        private static function assemble(binIndex:int, permutation:Permutation):void
        {
            if(binIndex == assemblyProvider.bins.length) {
                if(binIndex == 0) {
                    return;
                } else {
                    permutationSet.addPermutation(permutation);
                    
                    return;
                }
            }
            
            var currentBin:Bin = assemblyProvider.bins[binIndex] as Bin;
            var binSize:int = currentBin.items.length;
            
            if(binSize > 0) {
                for(var i:int = 0; i < binSize; i++) {
                    var assemblyItem:AssemblyItem = currentBin.items[i] as AssemblyItem;
                    
                    var newPermutation:Permutation = permutation.clone();
                    
                    newPermutation.addAssemblyItem(assemblyItem);
                    
                    assemble(binIndex + 1, newPermutation);
                }
            } else {
                assemble(binIndex + 1, permutation);
            }
        }
    }
}