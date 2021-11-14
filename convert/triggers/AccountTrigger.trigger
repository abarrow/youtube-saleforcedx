trigger AccountTrigger on Account (before update, before insert) {
    System.debug('Entered trigger');
    System.debug('firstRun=' + TriggerUtil.firstRun);
    System.debug('map size=' + Trigger.newMap.size());

    if (TriggerUtil.firstRun) {
        TriggerUtil.firstRun = false;
        System.debug('firstRun=' + TriggerUtil.firstRun);

    }
}