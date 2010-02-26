package org.jbei.registry.commands
{
	import org.jbei.registry.proxies.EntriesServiceProxy;
	import org.jbei.registry.proxies.MainServiceProxy;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;

	public class PrepareModelCommand extends SimpleCommand
	{
		// Public Methods
		public override function execute(notification:INotification):void
		{
			facade.registerProxy(new MainServiceProxy());
			facade.registerProxy(new EntriesServiceProxy());
		}
	}
}