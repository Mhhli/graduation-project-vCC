
from mininet.link import TCLink, TCIntf, Link
from mininet.topo import Topo
import termcolor as T

# Just for some fancy color printing
def cprint(s, color, cr=True):
    """Print in color
       s: string to print
       color: color to use"""
    if cr:
        print T.colored(s, color)
    else:
        print T.colored(s, color),

        
# Topology to be instantiated in Mininet
class StarTopo(Topo):
    "Star topology for DCTCP experiment"

    def __init__(self, n=3, cpu=None, bw_ecn_host=None, bw_non_ecn_host=None, bw_net=None,
                 delay=None, maxq=None, enable_ecn=None, enable_red=None,
                 show_mininet_commands=False, red_params=None):
        # Add default members to class.
        super(StarTopo, self ).__init__()
        self.n = n
        self.cpu = cpu
        self.bw_ecn_host = bw_ecn_host
        self.bw_non_ecn_host = bw_non_ecn_host
        self.bw_net = bw_net
        self.delay = delay
        self.maxq = maxq
        self.enable_ecn = enable_ecn
        self.enable_red = enable_red
        self.red_params = red_params
        self.show_mininet_commands = show_mininet_commands;
        
        cprint("Enable ECN: %d" % self.enable_ecn, 'green')
        cprint("Enable RED: %d" % self.enable_red, 'green')
        
        self.create_topology()

    # Create the experiment topology 
    # Set appropriate values for bandwidth, delay, 
    # and queue size 
    def create_topology(self):
        # Host and link configuration
        hconfig = {'cpu': self.cpu}

        
	# Set configurations for the topology and then add hosts etc.
        lconfig_ecn_sender = {'bw': self.bw_ecn_host, 'delay': self.delay,
                          'max_queue_size': self.maxq,
                          'show_commands': self.show_mininet_commands}

        lconfig_non_ecn_sender = {'bw': self.bw_non_ecn_host, 'delay': self.delay,
                          'max_queue_size': self.maxq,
                          'show_commands': self.show_mininet_commands}

        #lconfig_sender = {'bw': self.bw_host, 'delay': self.delay,
         #                 'max_queue_size': self.maxq,
         #                 'show_commands': self.show_mininet_commands}
        lconfig_receiver = {'bw': self.bw_net, 'delay': self.delay,
                            'max_queue_size': self.maxq,
                            'show_commands': self.show_mininet_commands}                            
        lconfig_switch = {'bw': self.bw_net, 'delay': self.delay,
                            'max_queue_size': self.maxq,
                            'enable_ecn': 1 if self.enable_ecn else 0,
                            'enable_red': 1 if self.enable_red else 0,
                            'red_params': self.red_params if ( (self.enable_red ) 
						and self.red_params != None) else None,
                            'show_commands': self.show_mininet_commands}                            
        
        n = self.n
        # Create the receiver
        receiver = self.addHost('h0')
        # Create the switch
        switch = self.addSwitch('s0')
        # Create the sender hosts
        hosts = []

        host_non_ecn = self.addHost('h1',**hconfig)

        for i in range(n-2):
            hosts.append(self.addHost('h%d' % (i+2), **hconfig))
        # Create links between receiver and switch
	self.addLink(receiver, switch, cls=Link,
                      cls1=TCIntf, cls2=TCIntf,
                      params1=lconfig_receiver, params2=lconfig_switch)
        # Create links between senders and switch

        self.addLink(host_non_ecn, switch, **lconfig_non_ecn_sender)

        for i in range(n-2):
	    self.addLink(hosts[i], switch, **lconfig_ecn_sender)
