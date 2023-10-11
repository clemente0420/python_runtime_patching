from dcba import module
from xdcba import xmodule

module_compos = xmodule.ModuleComposition(module)
module.dcba_greet = module_compos.dcba_greet