<?php
namespace Razorpay\Magento\Controller\Payment\FormDataAnalytics;

/**
 * Interceptor class for @see \Razorpay\Magento\Controller\Payment\FormDataAnalytics
 */
class Interceptor extends \Razorpay\Magento\Controller\Payment\FormDataAnalytics implements \Magento\Framework\Interception\InterceptorInterface
{
    use \Magento\Framework\Interception\Interceptor;

    public function __construct(\Magento\Framework\App\Action\Context $context, \Razorpay\Magento\Model\TrackPluginInstrumentation $trackPluginInstrumentation, \Magento\Customer\Model\Session $customerSession, \Magento\Checkout\Model\Session $checkoutSession, \Razorpay\Magento\Model\Config $config, \Psr\Log\LoggerInterface $logger)
    {
        $this->___init();
        parent::__construct($context, $trackPluginInstrumentation, $customerSession, $checkoutSession, $config, $logger);
    }

    /**
     * {@inheritdoc}
     */
    public function dispatch(\Magento\Framework\App\RequestInterface $request)
    {
        $pluginInfo = $this->pluginList->getNext($this->subjectType, 'dispatch');
        if (!$pluginInfo) {
            return parent::dispatch($request);
        } else {
            return $this->___callPlugins('dispatch', func_get_args(), $pluginInfo);
        }
    }
}
