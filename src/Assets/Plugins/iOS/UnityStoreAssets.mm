#import "UnityStoreAssets.h"
#import "VirtualCategory.h"
#import "VirtualCurrency.h"
#import "VirtualGood.h"
#import "VirtualCurrencyPack.h"
#import "StaticPriceModel.h"

//NSString* const MUFFINS_CURRENCY_ITEM_ID = @"currency_muffin";

@implementation UnityStoreAssets

- (id)init{
	self = [super init];
	if(self){
		virtualCurrenciesArray = [[NSMutableArray alloc] init];
		virtualGoodsArray = [[NSMutableArray alloc] init];
		virtualCurrencyPacksArray = [[NSMutableArray alloc] init];
		virtualCategoriesArray = [[NSMutableArray alloc] init];
		nonConsumablesArray = [[NSMutableArray alloc] init];
//		printf("init VirtualCurrencies: %s\n", [virtualCurrenciesArray.description UTF8String]);
	}
	return self;
}		

- (NSArray*)virtualCurrencies{
    return virtualCurrenciesArray;
}

- (NSArray*)virtualGoods{
    return virtualGoodsArray;
}

- (NSArray*)virtualCurrencyPacks{
    return virtualCurrencyPacksArray;
}

- (NSArray*)virtualCategories{
    return virtualCategoriesArray;
}

- (NSArray*)appStoreNonConsumableItems {
    return nonConsumablesArray;
}

- (void)dealloc {
    [virtualCurrenciesArray release];
    [virtualGoodsArray release];
    [virtualCurrencyPacksArray release];
    [virtualCategoriesArray release];
    [nonConsumablesArray release];
    [super dealloc];
}

@end
